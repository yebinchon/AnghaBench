; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_r2cmd.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_cmd_r2cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"r%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rax2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"radare2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rasm2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rabin2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ragg2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"r2pm\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"radiff2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"rahash2\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"rafind2\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"rarun2\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@__const.cmd_r2cmd.r2cmds = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @cmd_r2cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_r2cmd(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [11 x i8*], align 16
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @r_str_newf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @r_str_startswith(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @__runMain(i32 %18, i8* %19)
  store i32 %20, i32* %7, align 4
  br label %96

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @r_str_startswith(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %95

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @r_str_startswith(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %33)
  br label %94

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @r_str_startswith(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %93

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @r_str_startswith(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %92

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @r_str_startswith(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @r_sys_cmdf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %91

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @r_str_startswith(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @__runMain(i32 %63, i8* %64)
  store i32 %65, i32* %7, align 4
  br label %90

66:                                               ; preds = %56
  %67 = bitcast [11 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 16 bitcast ([11 x i8*]* @__const.cmd_r2cmd.r2cmds to i8*), i64 88, i1 false)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %86, %66
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @r_str_startswith(i8* %75, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @free(i8* %83)
  store i32 1, i32* %3, align 4
  br label %104

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %68

89:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %104

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %53
  br label %92

92:                                               ; preds = %91, %46
  br label %93

93:                                               ; preds = %92, %39
  br label %94

94:                                               ; preds = %93, %32
  br label %95

95:                                               ; preds = %94, %25
  br label %96

96:                                               ; preds = %95, %15
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %99, i32* %103, align 4
  store i32 1, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %89, %82
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i8* @r_str_newf(i8*, i8*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @__runMain(i32, i8*) #1

declare dso_local i32 @r_sys_cmdf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
