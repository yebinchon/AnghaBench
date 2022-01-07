; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_set_client_label.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_set_client_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@client_label_peer = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SELinux: invalid security label: \22%s\22\00", align 1
@SEPG_CLASS_PROCESS = common dso_local global i32 0, align 4
@SEPG_PROCESS__SETCURRENT = common dso_local global i32 0, align 4
@SEPG_PROCESS__DYNTRANSITION = common dso_local global i32 0, align 4
@CurTransactionContext = common dso_local global i32 0, align 4
@client_label_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sepgsql_set_client_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sepgsql_set_client_label(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @client_label_peer, align 8
  store i8* %9, i8** %3, align 8
  br label %24

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = call i64 @security_check_context_raw(i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @ereport(i32 %16, i32 %20)
  br label %22

22:                                               ; preds = %15, %10
  %23 = load i8*, i8** %2, align 8
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %22, %8
  %25 = call i8* (...) @sepgsql_get_client_label()
  %26 = load i32, i32* @SEPG_CLASS_PROCESS, align 4
  %27 = load i32, i32* @SEPG_PROCESS__SETCURRENT, align 4
  %28 = call i32 @sepgsql_avc_check_perms_label(i8* %25, i32 %26, i32 %27, i32* null, i32 1)
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @SEPG_CLASS_PROCESS, align 4
  %31 = load i32, i32* @SEPG_PROCESS__DYNTRANSITION, align 4
  %32 = call i32 @sepgsql_avc_check_perms_label(i8* %29, i32 %30, i32 %31, i32* null, i32 1)
  %33 = load i32, i32* @CurTransactionContext, align 4
  %34 = call i32 @MemoryContextSwitchTo(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = call %struct.TYPE_4__* @palloc0(i32 8)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %5, align 8
  %36 = call i32 (...) @GetCurrentSubTransactionId()
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %24
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @pstrdup(i8* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %24
  %47 = load i32, i32* @client_label_pending, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = call i32 @lappend(i32 %47, %struct.TYPE_4__* %48)
  store i32 %49, i32* @client_label_pending, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @MemoryContextSwitchTo(i32 %50)
  ret void
}

declare dso_local i64 @security_check_context_raw(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @sepgsql_avc_check_perms_label(i8*, i32, i32, i32*, i32) #1

declare dso_local i8* @sepgsql_get_client_label(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_4__* @palloc0(i32) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
