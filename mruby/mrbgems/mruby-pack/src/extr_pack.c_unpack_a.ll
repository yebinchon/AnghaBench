; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_a.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACK_FLAG_Z = common dso_local global i32 0, align 4
@PACK_FLAG_a = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i64, i32)* @unpack_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_a(i32* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %15, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i64, i64* %11, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %25, %20, %6
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @PACK_FLAG_Z, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @memchr(i8* %38, i8 signext 0, i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %43
  br label %56

56:                                               ; preds = %55, %37
  br label %93

57:                                               ; preds = %32, %28
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @PACK_FLAG_a, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %88, %62
  %64 = load i32, i32* %16, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %66
  %76 = load i8*, i8** %15, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @ISSPACE(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %75, %66
  %85 = phi i1 [ true, %66 ], [ %83, %75 ]
  br label %86

86:                                               ; preds = %84, %63
  %87 = phi i1 [ false, %63 ], [ %85, %84 ]
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %16, align 4
  br label %63

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %57
  br label %93

93:                                               ; preds = %92, %56
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i8*, i8** %15, align 8
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @mrb_str_new(i32* %98, i8* %99, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @mrb_ary_push(i32* %102, i32 %103, i32 %104)
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
