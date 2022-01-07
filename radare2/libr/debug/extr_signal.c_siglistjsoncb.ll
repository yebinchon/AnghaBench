; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/extr_signal.c_siglistjsoncb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/extr_signal.c_siglistjsoncb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@siglistjsoncb.key = internal global [32 x i8] c"cfg.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@DB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"{\22signum\22:\22%s\22,\22name\22:\22%s\22,\22option\22:\00", align 1
@R_DBG_SIGNAL_CONT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\22cont\22\00", align 1
@R_DBG_SIGNAL_SKIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"\22skip\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @siglistjsoncb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siglistjsoncb(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @atoi(i8* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strncpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @siglistjsoncb.key, i64 0, i64 4), i8* %15, i32 20)
  %17 = load i32, i32* @DB, align 4
  %18 = call i64 @sdb_num_get(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @siglistjsoncb.key, i64 0, i64 0), i32 0)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %29

27:                                               ; preds = %14
  %28 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @r_cons_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @R_DBG_SIGNAL_CONT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %49

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @R_DBG_SIGNAL_SKIP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %48

46:                                               ; preds = %39
  %47 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %37
  %50 = call i32 @r_cons_strcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %3
  ret i32 1
}

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @sdb_num_get(i32, i8*, i32) #1

declare dso_local i32 @r_cons_strcat(i8*) #1

declare dso_local i32 @r_cons_printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
