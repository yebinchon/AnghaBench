; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_rijndael_set_key.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_rijndael.c_rijndael_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32, i32 }

@tab_gen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @rijndael_set_key(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %15, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @tab_gen, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %4
  %31 = call i32 (...) @gen_tabs()
  br label %32

32:                                               ; preds = %30, %4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 31
  %35 = sdiv i32 %34, 32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @io_swap(i32 %40)
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @io_swap(i32 %46)
  %48 = load i32*, i32** %14, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @io_swap(i32 %52)
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @io_swap(i32 %58)
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %137 [
    i32 4, label %65
    i32 6, label %79
    i32 8, label %102
  ]

65:                                               ; preds = %32
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %75, %65
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 10
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @loop4(i32 %73)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %69

78:                                               ; preds = %69
  br label %137

79:                                               ; preds = %32
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @io_swap(i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @io_swap(i32 %88)
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  store i32 %89, i32* %91, align 4
  store i32 %89, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %98, %79
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @loop6(i32 %96)
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %92

101:                                              ; preds = %92
  br label %137

102:                                              ; preds = %32
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @io_swap(i32 %105)
  %107 = load i32*, i32** %14, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @io_swap(i32 %111)
  %113 = load i32*, i32** %14, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @io_swap(i32 %117)
  %119 = load i32*, i32** %14, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 7
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @io_swap(i32 %123)
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 7
  store i32 %124, i32* %126, align 4
  store i32 %124, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %133, %102
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 7
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @loop8(i32 %131)
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %127

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %32, %136, %101, %78
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %185, label %140

140:                                              ; preds = %137
  %141 = load i32*, i32** %14, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 %143, i32* %145, align 4
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** %14, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %15, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  store i32 %158, i32* %160, align 4
  store i32 4, i32* %9, align 4
  br label %161

161:                                              ; preds = %181, %140
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = mul nsw i32 4, %165
  %167 = add nsw i32 %166, 24
  %168 = icmp slt i32 %162, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %161
  %170 = load i32*, i32** %15, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %14, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @imix_col(i32 %174, i32 %179)
  br label %181

181:                                              ; preds = %169
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %161

184:                                              ; preds = %161
  br label %185

185:                                              ; preds = %184, %137
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %186
}

declare dso_local i32 @gen_tabs(...) #1

declare dso_local i32 @io_swap(i32) #1

declare dso_local i32 @loop4(i32) #1

declare dso_local i32 @loop6(i32) #1

declare dso_local i32 @loop8(i32) #1

declare dso_local i32 @imix_col(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
