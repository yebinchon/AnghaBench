; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_tcc_split_path.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_libtcc.c_tcc_split_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@PATHSEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8***, i32*, i8*)* @tcc_split_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcc_split_path(%struct.TYPE_7__* %0, i8*** %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %12

12:                                               ; preds = %74, %4
  %13 = call i32 @cstr_new(%struct.TYPE_8__* %11)
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %9, align 8
  br label %15

15:                                               ; preds = %62, %12
  %16 = load i8*, i8** %9, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PATHSEP, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  br i1 %26, label %27, label %65

27:                                               ; preds = %25
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 123
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 125
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %48, i8** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 66
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cstr_cat(%struct.TYPE_8__* %11, i32 %54)
  br label %56

56:                                               ; preds = %51, %42
  br label %61

57:                                               ; preds = %36, %30, %27
  %58 = load i32, i32* %10, align 4
  %59 = trunc i32 %58 to i8
  %60 = call i32 @cstr_ccat(%struct.TYPE_8__* %11, i8 signext %59)
  br label %61

61:                                               ; preds = %57, %56
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  br label %15

65:                                               ; preds = %25
  %66 = call i32 @cstr_ccat(%struct.TYPE_8__* %11, i8 signext 0)
  %67 = load i8***, i8**** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dynarray_add(i8*** %67, i32* %68, i32 %70)
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %65
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %12, label %78

78:                                               ; preds = %74
  ret void
}

declare dso_local i32 @cstr_new(%struct.TYPE_8__*) #1

declare dso_local i32 @cstr_cat(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cstr_ccat(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32 @dynarray_add(i8***, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
