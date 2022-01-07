; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_addFcnZign.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_addFcnZign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_25__*, i8*)* @addFcnZign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addFcnZign(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = call %struct.TYPE_23__* @r_spaces_current(i32* %15)
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @r_str_new(i8* %20)
  store i8* %21, i8** %9, align 8
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 58)
  store i8* %26, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %29 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i8* @r_str_newlen(i8* %39, i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @r_spaces_push(i32* %45, i8* %46)
  br label %57

48:                                               ; preds = %22
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @r_str_newf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i8* %55, i8** %9, align 8
  br label %56

56:                                               ; preds = %51, %48
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @r_str_appendf(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i8* %62, i8** %9, align 8
  br label %63

63:                                               ; preds = %57, %19
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @addFcnGraph(%struct.TYPE_24__* %64, %struct.TYPE_25__* %65, i8* %66)
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @addFcnBytes(%struct.TYPE_24__* %68, %struct.TYPE_25__* %69, i8* %70)
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @addFcnXRefs(%struct.TYPE_24__* %72, %struct.TYPE_25__* %73, i8* %74)
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @addFcnRefs(%struct.TYPE_24__* %76, %struct.TYPE_25__* %77, i8* %78)
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @addFcnVars(%struct.TYPE_24__* %80, %struct.TYPE_25__* %81, i8* %82)
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @addFcnTypes(%struct.TYPE_24__* %84, %struct.TYPE_25__* %85, i8* %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @addFcnHash(%struct.TYPE_24__* %88, %struct.TYPE_25__* %89, i8* %90)
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %92, i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %63
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %100, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @r_sign_add_name(%struct.TYPE_26__* %101, i8* %102, i8* %105)
  br label %107

107:                                              ; preds = %98, %63
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %109, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @r_sign_add_addr(%struct.TYPE_26__* %110, i8* %111, i32 %114)
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @free(i8* %116)
  %118 = load i8*, i8** %8, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %107
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = call i32 @r_spaces_pop(i32* %124)
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %120, %107
  ret void
}

declare dso_local %struct.TYPE_23__* @r_spaces_current(i32*) #1

declare dso_local i8* @r_str_new(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_str_newlen(i8*, i32) #1

declare dso_local i32 @r_spaces_push(i32*, i8*) #1

declare dso_local i8* @r_str_newf(i8*, i32) #1

declare dso_local i8* @r_str_appendf(i8*, i8*, i8*) #1

declare dso_local i32 @addFcnGraph(%struct.TYPE_24__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @addFcnBytes(%struct.TYPE_24__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @addFcnXRefs(%struct.TYPE_24__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @addFcnRefs(%struct.TYPE_24__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @addFcnVars(%struct.TYPE_24__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @addFcnTypes(%struct.TYPE_24__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @addFcnHash(%struct.TYPE_24__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @r_sign_add_name(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @r_sign_add_addr(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_spaces_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
