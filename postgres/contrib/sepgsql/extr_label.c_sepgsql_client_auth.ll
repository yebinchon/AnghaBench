; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_client_auth.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_sepgsql_client_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@STATUS_OK = common dso_local global i32 0, align 4
@client_label_peer = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"SELinux: unable to get peer label: %m\00", align 1
@SEPGSQL_MODE_PERMISSIVE = common dso_local global i32 0, align 4
@SEPGSQL_MODE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @sepgsql_client_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sepgsql_client_auth(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  br i1 true, label %5, label %9

5:                                                ; preds = %2
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @next_client_auth_hook(%struct.TYPE_5__* %6, i32 %7)
  br label %9

9:                                                ; preds = %5, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @STATUS_OK, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %35

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @getpeercon_raw(i32 %17, i32* @client_label_peer)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* @FATAL, align 4
  %22 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @ereport(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = call i64 (...) @sepgsql_get_permissive()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @SEPGSQL_MODE_PERMISSIVE, align 4
  %31 = call i32 @sepgsql_set_mode(i32 %30)
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @SEPGSQL_MODE_DEFAULT, align 4
  %34 = call i32 @sepgsql_set_mode(i32 %33)
  br label %35

35:                                               ; preds = %13, %32, %29
  ret void
}

declare dso_local i32 @next_client_auth_hook(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @getpeercon_raw(i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @sepgsql_get_permissive(...) #1

declare dso_local i32 @sepgsql_set_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
