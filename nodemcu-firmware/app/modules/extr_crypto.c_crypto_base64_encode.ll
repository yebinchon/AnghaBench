; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_base64_encode.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes64 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @crypto_base64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_base64_encode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i32* %3)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @luaL_buffinit(i32* %12, i32* %6)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %107, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %110

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  br label %38

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %29
  %39 = phi i32 [ %36, %29 ], [ 0, %37 ]
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 2
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  br label %53

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %44
  %54 = phi i32 [ %51, %44 ], [ 0, %52 ]
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** @bytes64, align 8
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @luaL_addchar(i32* %6, i32 %60)
  %62 = load i32*, i32** @bytes64, align 8
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 3
  %65 = shl i32 %64, 4
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 4
  %68 = or i32 %65, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %62, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @luaL_addchar(i32* %6, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %53
  %78 = load i32*, i32** @bytes64, align 8
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 15
  %81 = shl i32 %80, 2
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 6
  %84 = or i32 %81, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %78, i64 %85
  %87 = load i32, i32* %86, align 4
  br label %89

88:                                               ; preds = %53
  br label %89

89:                                               ; preds = %88, %77
  %90 = phi i32 [ %87, %77 ], [ 61, %88 ]
  %91 = call i32 @luaL_addchar(i32* %6, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 2
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32*, i32** @bytes64, align 8
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 63
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %96
  %105 = phi i32 [ %102, %96 ], [ 61, %103 ]
  %106 = call i32 @luaL_addchar(i32* %6, i32 %105)
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 3
  store i32 %109, i32* %4, align 4
  br label %14

110:                                              ; preds = %14
  %111 = call i32 @luaL_pushresult(i32* %6)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
