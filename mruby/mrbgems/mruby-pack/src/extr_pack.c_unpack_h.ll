; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_h.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_unpack_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.unpack_h.hexadecimal = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@PACK_FLAG_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32, i32, i32)* @unpack_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_h(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca [17 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = bitcast [17 x i8]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.unpack_h.hexadecimal, i32 0, i32 0), i64 17, i1 false)
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @PACK_FLAG_LSB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  store i32 4, i32* %17, align 4
  br label %30

29:                                               ; preds = %6
  store i32 4, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i8*, i8** %8, align 8
  store i8* %31, i8** %18, align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @mrb_str_new(i32* %38, i32* null, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i8* @RSTRING_PTR(i32 %41)
  store i8* %42, i8** %20, align 8
  %43 = load i8*, i8** %18, align 8
  store i8* %43, i8** %19, align 8
  %44 = load i8*, i8** %20, align 8
  store i8* %44, i8** %21, align 8
  br label %45

45:                                               ; preds = %89, %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %53, label %90

53:                                               ; preds = %51
  %54 = load i8*, i8** %18, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i32, i32* %15, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 15
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %18, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i32, i32* %17, align 4
  %64 = ashr i32 %62, %63
  %65 = and i32 %64, 15
  store i32 %65, i32* %16, align 4
  %66 = load i8*, i8** %18, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %18, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [17 x i8], [17 x i8]* %22, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %20, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %20, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %53
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [17 x i8], [17 x i8]* %22, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %20, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %20, align 8
  store i8 %84, i8* %85, align 1
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %80, %53
  br label %45

90:                                               ; preds = %51
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i8*, i8** %20, align 8
  %94 = load i8*, i8** %21, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @mrb_str_resize(i32* %91, i32 %92, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @mrb_ary_push(i32* %100, i32 %101, i32 %102)
  %104 = load i8*, i8** %18, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mrb_str_new(i32*, i32*, i32) #2

declare dso_local i8* @RSTRING_PTR(i32) #2

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #2

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
