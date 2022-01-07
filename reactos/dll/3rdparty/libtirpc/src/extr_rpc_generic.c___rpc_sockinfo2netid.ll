; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_sockinfo2netid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_rpc_generic.c___rpc_sockinfo2netid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8* }
%struct.__rpc_sockinfo = type { i64, i64 }
%struct.netconfig = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@na_cvt = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"unix\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_sockinfo2netid(%struct.__rpc_sockinfo* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__rpc_sockinfo*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netconfig*, align 8
  store %struct.__rpc_sockinfo* %0, %struct.__rpc_sockinfo** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.netconfig* %8, %struct.netconfig** %7, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %73, %2
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 2
  br i1 %12, label %13, label %76

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %4, align 8
  %21 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %13
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.__rpc_sockinfo*, %struct.__rpc_sockinfo** %4, align 8
  %32 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %24
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %46 = icmp eq %struct.netconfig* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8**, i8*** %5, align 8
  %49 = icmp ne i8** %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  br label %52

52:                                               ; preds = %50, %47
  br label %65

53:                                               ; preds = %44, %35
  %54 = load i8**, i8*** %5, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @na_cvt, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** %5, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %56, %53
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %67 = icmp ne %struct.netconfig* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %70 = call i32 @freenetconfigent(%struct.netconfig* %69)
  br label %71

71:                                               ; preds = %68, %65
  store i32 1, i32* %3, align 4
  br label %83

72:                                               ; preds = %24, %13
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %9

76:                                               ; preds = %9
  %77 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %78 = icmp ne %struct.netconfig* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %81 = call i32 @freenetconfigent(%struct.netconfig* %80)
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freenetconfigent(%struct.netconfig*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
