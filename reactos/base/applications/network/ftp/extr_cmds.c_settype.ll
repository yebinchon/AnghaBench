; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_settype.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_settype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.types = type { i64, i8*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"usage: %s [\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@types = common dso_local global %struct.types* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@code = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Using %s mode to transfer files.\0A\00", align 1
@typename = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: unknown mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"TYPE %s %s\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"TYPE %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @settype(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.types*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %15 = load %struct.types*, %struct.types** @types, align 8
  store %struct.types* %15, %struct.types** %5, align 8
  br label %16

16:                                               ; preds = %33, %10
  %17 = load %struct.types*, %struct.types** %5, align 8
  %18 = getelementptr inbounds %struct.types, %struct.types* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.types*, %struct.types** %5, align 8
  %24 = getelementptr inbounds %struct.types, %struct.types* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %22, i64 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %32

32:                                               ; preds = %31, %21
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.types*, %struct.types** %5, align 8
  %35 = getelementptr inbounds %struct.types, %struct.types* %34, i32 1
  store %struct.types* %35, %struct.types** %5, align 8
  br label %16

36:                                               ; preds = %16
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 @fflush(i32 %38)
  store i32 -1, i32* @code, align 4
  br label %119

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** @typename, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fflush(i32 %46)
  store i32 0, i32* @code, align 4
  br label %119

48:                                               ; preds = %40
  %49 = load %struct.types*, %struct.types** @types, align 8
  store %struct.types* %49, %struct.types** %5, align 8
  br label %50

50:                                               ; preds = %66, %48
  %51 = load %struct.types*, %struct.types** %5, align 8
  %52 = getelementptr inbounds %struct.types, %struct.types* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i8**, i8*** %4, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.types*, %struct.types** %5, align 8
  %60 = getelementptr inbounds %struct.types, %struct.types* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @strcmp(i8* %58, i64 %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.types*, %struct.types** %5, align 8
  %68 = getelementptr inbounds %struct.types, %struct.types* %67, i32 1
  store %struct.types* %68, %struct.types** %5, align 8
  br label %50

69:                                               ; preds = %64, %50
  %70 = load %struct.types*, %struct.types** %5, align 8
  %71 = getelementptr inbounds %struct.types, %struct.types* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i8**, i8*** %4, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @stdout, align 4
  %80 = call i32 @fflush(i32 %79)
  store i32 -1, i32* @code, align 4
  br label %119

81:                                               ; preds = %69
  %82 = load %struct.types*, %struct.types** %5, align 8
  %83 = getelementptr inbounds %struct.types, %struct.types* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load %struct.types*, %struct.types** %5, align 8
  %88 = getelementptr inbounds %struct.types, %struct.types* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.types*, %struct.types** %5, align 8
  %95 = getelementptr inbounds %struct.types, %struct.types* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.types*, %struct.types** %5, align 8
  %98 = getelementptr inbounds %struct.types, %struct.types* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i8*, i32, ...) @command(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %96, i8* %99)
  store i32 %100, i32* %6, align 4
  br label %106

101:                                              ; preds = %86, %81
  %102 = load %struct.types*, %struct.types** %5, align 8
  %103 = getelementptr inbounds %struct.types, %struct.types* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %93
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @COMPLETE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i8*, i8** @typename, align 8
  %112 = load %struct.types*, %struct.types** %5, align 8
  %113 = getelementptr inbounds %struct.types, %struct.types* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @strcpy(i8* %111, i64 %114)
  %116 = load %struct.types*, %struct.types** %5, align 8
  %117 = getelementptr inbounds %struct.types, %struct.types* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* @type, align 4
  br label %119

119:                                              ; preds = %36, %43, %74, %110, %106
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @command(i8*, i32, ...) #1

declare dso_local i32 @strcpy(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
