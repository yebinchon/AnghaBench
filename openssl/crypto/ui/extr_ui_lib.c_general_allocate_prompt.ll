; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_general_allocate_prompt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ui/extr_ui_lib.c_general_allocate_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i8*, i32 }

@UI_F_GENERAL_ALLOCATE_PROMPT = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@UIT_PROMPT = common dso_local global i32 0, align 4
@UIT_VERIFY = common dso_local global i32 0, align 4
@UIT_BOOLEAN = common dso_local global i32 0, align 4
@UI_R_NO_RESULT_BUFFER = common dso_local global i32 0, align 4
@OUT_STRING_FREEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i8*, i32, i32, i32, i8*)* @general_allocate_prompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @general_allocate_prompt(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = load i32, i32* @UI_F_GENERAL_ALLOCATE_PROMPT, align 4
  %18 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %19 = call i32 @UIerr(i32 %17, i32 %18)
  br label %66

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @UIT_PROMPT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @UIT_VERIFY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @UIT_BOOLEAN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %24, %20
  %33 = load i8*, i8** %12, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @UI_F_GENERAL_ALLOCATE_PROMPT, align 4
  %37 = load i32, i32* @UI_R_NO_RESULT_BUFFER, align 4
  %38 = call i32 @UIerr(i32 %36, i32 %37)
  br label %65

39:                                               ; preds = %32, %28
  %40 = call %struct.TYPE_4__* @OPENSSL_malloc(i32 32)
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %13, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @OUT_STRING_FREEABLE, align 4
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %51, %39
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %16
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  ret %struct.TYPE_4__* %67
}

declare dso_local i32 @UIerr(i32, i32) #1

declare dso_local %struct.TYPE_4__* @OPENSSL_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
