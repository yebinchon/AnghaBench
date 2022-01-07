; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_pg_base64_encode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_encode.c_pg_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_base64 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @pg_base64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_base64_encode(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 76
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %10, align 8
  store i32 2, i32* %11, align 4
  store i8 0, i8* %12, align 1
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %91, %3
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %11, align 4
  %30 = shl i32 %29, 3
  %31 = shl i32 %28, %30
  %32 = load i8, i8* %12, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %12, align 1
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %11, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %25
  %43 = load i8*, i8** @_base64, align 8
  %44 = load i8, i8* %12, align 1
  %45 = zext i8 %44 to i32
  %46 = ashr i32 %45, 18
  %47 = and i32 %46, 63
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i8*, i8** @_base64, align 8
  %54 = load i8, i8* %12, align 1
  %55 = zext i8 %54 to i32
  %56 = ashr i32 %55, 12
  %57 = and i32 %56, 63
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i8*, i8** @_base64, align 8
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 6
  %67 = and i32 %66, 63
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8*, i8** @_base64, align 8
  %74 = load i8, i8* %12, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 63
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  store i8 %79, i8* %80, align 1
  store i32 2, i32* %11, align 4
  store i8 0, i8* %12, align 1
  br label %82

82:                                               ; preds = %42, %25
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = icmp uge i8* %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %7, align 8
  store i8 10, i8* %87, align 1
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 76
  store i8* %90, i8** %8, align 8
  br label %91

91:                                               ; preds = %86, %82
  br label %21

92:                                               ; preds = %21
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %136

95:                                               ; preds = %92
  %96 = load i8*, i8** @_base64, align 8
  %97 = load i8, i8* %12, align 1
  %98 = zext i8 %97 to i32
  %99 = ashr i32 %98, 18
  %100 = and i32 %99, 63
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %96, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8*, i8** @_base64, align 8
  %107 = load i8, i8* %12, align 1
  %108 = zext i8 %107 to i32
  %109 = ashr i32 %108, 12
  %110 = and i32 %109, 63
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %106, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %7, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %95
  %119 = load i8*, i8** @_base64, align 8
  %120 = load i8, i8* %12, align 1
  %121 = zext i8 %120 to i32
  %122 = ashr i32 %121, 6
  %123 = and i32 %122, 63
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %119, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  br label %129

128:                                              ; preds = %95
  br label %129

129:                                              ; preds = %128, %118
  %130 = phi i32 [ %127, %118 ], [ 61, %128 ]
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  store i8 %131, i8* %132, align 1
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  store i8 61, i8* %134, align 1
  br label %136

136:                                              ; preds = %129, %92
  %137 = load i8*, i8** %7, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
