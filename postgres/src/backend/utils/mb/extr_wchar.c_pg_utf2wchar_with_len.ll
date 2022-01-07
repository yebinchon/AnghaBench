; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_utf2wchar_with_len.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_wchar.c_pg_utf2wchar_with_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @pg_utf2wchar_with_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_utf2wchar_with_len(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %155, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %160

22:                                               ; preds = %20
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  br label %155

36:                                               ; preds = %22
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 224
  %41 = icmp eq i32 %40, 192
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %160

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  %49 = load i8, i8* %47, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 31
  store i32 %51, i32* %8, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 63
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 6
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %6, align 4
  br label %154

64:                                               ; preds = %36
  %65 = load i8*, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 240
  %69 = icmp eq i32 %68, 224
  br i1 %69, label %70, label %100

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %160

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  %77 = load i8, i8* %75, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 15
  store i32 %79, i32* %8, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %4, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 63
  store i32 %84, i32* %9, align 4
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  %87 = load i8, i8* %85, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 63
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 %90, 12
  %92 = load i32, i32* %9, align 4
  %93 = shl i32 %92, 6
  %94 = or i32 %91, %93
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %5, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub nsw i32 %98, 3
  store i32 %99, i32* %6, align 4
  br label %153

100:                                              ; preds = %64
  %101 = load i8*, i8** %4, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 248
  %105 = icmp eq i32 %104, 240
  br i1 %105, label %106, label %144

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %160

110:                                              ; preds = %106
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  %113 = load i8, i8* %111, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 7
  store i32 %115, i32* %8, align 4
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %4, align 8
  %118 = load i8, i8* %116, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 63
  store i32 %120, i32* %9, align 4
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  %123 = load i8, i8* %121, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 63
  store i32 %125, i32* %10, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %4, align 8
  %128 = load i8, i8* %126, align 1
  %129 = zext i8 %128 to i32
  %130 = and i32 %129, 63
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %8, align 4
  %132 = shl i32 %131, 18
  %133 = load i32, i32* %9, align 4
  %134 = shl i32 %133, 12
  %135 = or i32 %132, %134
  %136 = load i32, i32* %10, align 4
  %137 = shl i32 %136, 6
  %138 = or i32 %135, %137
  %139 = load i32, i32* %11, align 4
  %140 = or i32 %138, %139
  %141 = load i32*, i32** %5, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %6, align 4
  %143 = sub nsw i32 %142, 4
  store i32 %143, i32* %6, align 4
  br label %152

144:                                              ; preds = %100
  %145 = load i8*, i8** %4, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %4, align 8
  %147 = load i8, i8* %145, align 1
  %148 = zext i8 %147 to i32
  %149 = load i32*, i32** %5, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %144, %110
  br label %153

153:                                              ; preds = %152, %74
  br label %154

154:                                              ; preds = %153, %46
  br label %155

155:                                              ; preds = %154, %28
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %12

160:                                              ; preds = %109, %73, %45, %20
  %161 = load i32*, i32** %5, align 8
  store i32 0, i32* %161, align 4
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
