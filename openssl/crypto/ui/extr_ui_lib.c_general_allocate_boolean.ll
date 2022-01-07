; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_general_allocate_boolean.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_general_allocate_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8*, i8* }

@UI_F_GENERAL_ALLOCATE_BOOLEAN = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@UI_R_COMMON_OK_AND_CANCEL_CHARACTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*)* @general_allocate_boolean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @general_allocate_boolean(%struct.TYPE_14__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  store i32 -1, i32* %19, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = load i32, i32* @UI_F_GENERAL_ALLOCATE_BOOLEAN, align 4
  %26 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %27 = call i32 @UIerr(i32 %25, i32 %26)
  br label %105

28:                                               ; preds = %9
  %29 = load i8*, i8** %14, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @UI_F_GENERAL_ALLOCATE_BOOLEAN, align 4
  %33 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %34 = call i32 @UIerr(i32 %32, i32 %33)
  br label %104

35:                                               ; preds = %28
  %36 = load i8*, i8** %13, align 8
  store i8* %36, i8** %21, align 8
  br label %37

37:                                               ; preds = %53, %35
  %38 = load i8*, i8** %21, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %21, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32* @strchr(i8* %43, i8 signext %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @UI_F_GENERAL_ALLOCATE_BOOLEAN, align 4
  %50 = load i32, i32* @UI_R_COMMON_OK_AND_CANCEL_CHARACTERS, align 4
  %51 = call i32 @UIerr(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52
  %54 = load i8*, i8** %21, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %21, align 8
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i8*, i8** %18, align 8
  %63 = call %struct.TYPE_13__* @general_allocate_prompt(%struct.TYPE_14__* %57, i8* %58, i32 %59, i32 %60, i32 %61, i8* %62)
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %20, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %66, label %103

66:                                               ; preds = %56
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = call i64 @allocate_string_stack(%struct.TYPE_14__* %67)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load i8*, i8** %12, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i8* %76, i8** %80, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store i8* %81, i8** %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %90 = call i32 @sk_UI_STRING_push(i32 %88, %struct.TYPE_13__* %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %70
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %19, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %97 = call i32 @free_string(%struct.TYPE_13__* %96)
  br label %98

98:                                               ; preds = %93, %70
  br label %102

99:                                               ; preds = %66
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %101 = call i32 @free_string(%struct.TYPE_13__* %100)
  br label %102

102:                                              ; preds = %99, %98
  br label %103

103:                                              ; preds = %102, %56
  br label %104

104:                                              ; preds = %103, %31
  br label %105

105:                                              ; preds = %104, %24
  %106 = load i32, i32* %19, align 4
  ret i32 %106
}

declare dso_local i32 @UIerr(i32, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_13__* @general_allocate_prompt(%struct.TYPE_14__*, i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @allocate_string_stack(%struct.TYPE_14__*) #1

declare dso_local i32 @sk_UI_STRING_push(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @free_string(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
