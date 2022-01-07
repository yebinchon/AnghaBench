; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c__handle_call.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c__handle_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"x86\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"call \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" b \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" 0x\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bl \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bx \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8**)* @_handle_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_handle_call(%struct.TYPE_7__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14, %9, %3
  %22 = load i8**, i8*** %6, align 8
  store i8* null, i8** %22, align 8
  br label %79

23:                                               ; preds = %14
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %79

37:                                               ; preds = %23
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strstr(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %78

47:                                               ; preds = %37
  %48 = load i8*, i8** %5, align 8
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i8**, i8*** %6, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @strstr(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i8**, i8*** %6, align 8
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %59, %54, %47
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8**, i8*** %6, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @strstr(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i8**, i8*** %6, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %37
  br label %79

79:                                               ; preds = %21, %78, %33
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
