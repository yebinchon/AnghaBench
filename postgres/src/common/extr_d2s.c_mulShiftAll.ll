; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_mulShiftAll.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_d2s.c_mulShiftAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*, i32*, i32)* @mulShiftAll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mulShiftAll(i32 %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @umul128(i32 %31, i32 %34, i32* %13)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @umul128(i32 %37, i32 %40, i32* %15)
  %42 = add nsw i32 %36, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 %58, %62
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = add nsw i32 %64, %68
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 64
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @shiftright128(i32 %70, i32 %71, i32 %74)
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %108

79:                                               ; preds = %6
  %80 = load i32, i32* %14, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp sgt i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = sub nsw i32 %89, %93
  store i32 %94, i32* %21, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp sgt i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = sub nsw i32 %95, %99
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 64
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @shiftright128(i32 %101, i32 %102, i32 %105)
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  br label %155

108:                                              ; preds = %6
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = add nsw i32 %114, %118
  store i32 %119, i32* %24, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = add nsw i32 %122, %126
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %23, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %128, %131
  store i32 %132, i32* %26, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %133, %136
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %23, align 4
  %140 = icmp sgt i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = sub nsw i32 %137, %141
  store i32 %142, i32* %27, align 4
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* %24, align 4
  %146 = icmp sgt i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = sub nsw i32 %143, %147
  store i32 %148, i32* %28, align 4
  %149 = load i32, i32* %27, align 4
  %150 = load i32, i32* %28, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub nsw i32 %151, 64
  %153 = call i32 @shiftright128(i32 %149, i32 %150, i32 %152)
  %154 = load i32*, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %108, %79
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 %158, 64
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @shiftright128(i32 %156, i32 %157, i32 %160)
  ret i32 %161
}

declare dso_local i32 @umul128(i32, i32, i32*) #1

declare dso_local i32 @shiftright128(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
