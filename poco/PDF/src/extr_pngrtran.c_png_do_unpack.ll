; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_unpack.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"in png_do_unpack\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_unpack(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %181

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %163 [
    i32 1, label %28
    i32 2, label %73
    i32 4, label %119
  ]

28:                                               ; preds = %21
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  %32 = ashr i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 -1
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 7
  %42 = and i32 %41, 7
  %43 = sub nsw i32 7, %42
  store i32 %43, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %69, %28
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 7
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 -1
  store i32* %62, i32** %7, align 8
  br label %66

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 -1
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %44

72:                                               ; preds = %44
  br label %163

73:                                               ; preds = %21
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %75, 1
  %77 = ashr i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = getelementptr inbounds i32, i32* %83, i64 -1
  store i32* %84, i32** %11, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 3
  %87 = and i32 %86, 3
  %88 = sub nsw i32 3, %87
  %89 = shl i32 %88, 1
  store i32 %89, i32* %12, align 4
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %115, %73
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %90
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = ashr i32 %96, %97
  %99 = and i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %11, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 -1
  store i32* %108, i32** %10, align 8
  br label %112

109:                                              ; preds = %94
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 -1
  store i32* %114, i32** %11, align 8
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %90

118:                                              ; preds = %90
  br label %163

119:                                              ; preds = %21
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %121, 1
  %123 = ashr i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  store i32* %125, i32** %13, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = getelementptr inbounds i32, i32* %129, i64 -1
  store i32* %130, i32** %14, align 8
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  %133 = and i32 %132, 1
  %134 = sub nsw i32 1, %133
  %135 = shl i32 %134, 2
  store i32 %135, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %159, %119
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %136
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %15, align 4
  %144 = ashr i32 %142, %143
  %145 = and i32 %144, 15
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = ptrtoint i8* %147 to i32
  %149 = load i32*, i32** %14, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  store i32 0, i32* %15, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 -1
  store i32* %154, i32** %13, align 8
  br label %156

155:                                              ; preds = %140
  store i32 4, i32* %15, align 4
  br label %156

156:                                              ; preds = %155, %152
  %157 = load i32*, i32** %14, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 -1
  store i32* %158, i32** %14, align 8
  br label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %136

162:                                              ; preds = %136
  br label %163

163:                                              ; preds = %21, %162, %118, %72
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i32 8, i32* %165, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 8, %168
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %174, %177
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %163, %2
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
