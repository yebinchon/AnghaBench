; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_radare2.c_rabin_delegate.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_radare2.c_rabin_delegate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@r = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@rabin_cmd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"rabin2: done\0A\00", align 1
@R_TH_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @rabin_delegate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rabin_delegate(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @r, i32 0, i32 1), align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @r, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_10__* @r_io_desc_get(i32 %7, i32 %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %3, align 8
  %12 = load i32*, i32** @rabin_cmd, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @r_file_exists(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load i32*, i32** @rabin_cmd, align 8
  %22 = call i8* @r_sys_cmd_str(i32* %21, i32* null, i32* null)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %59, %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @r_th_lock_enter(i32 %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 10)
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @r_core_cmd(%struct.TYPE_11__* @r, i8* %43, i32 0)
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @r_th_lock_leave(i32 %56)
  br label %58

58:                                               ; preds = %53, %50
  br label %59

59:                                               ; preds = %58
  %60 = load i8*, i8** %4, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %27, label %62

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %20
  %64 = load i32*, i32** @rabin_cmd, align 8
  %65 = call i32 @free(i32* %64)
  store i32* null, i32** @rabin_cmd, align 8
  br label %66

66:                                               ; preds = %63, %14, %1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 @eprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* @R_TH_STOP, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_10__* @r_io_desc_get(i32, i32) #1

declare dso_local i64 @r_file_exists(i32) #1

declare dso_local i8* @r_sys_cmd_str(i32*, i32*, i32*) #1

declare dso_local i32 @r_th_lock_enter(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_core_cmd(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @r_th_lock_leave(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
