; ModuleID = '/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_tool.c_inner_int_union.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_tool.c_inner_int_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @inner_int_union(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @CHECKARRVALID(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @CHECKARRVALID(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ARRISEMPTY(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @ARRISEMPTY(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32* @new_intArrayType(i32 0)
  store i32* %26, i32** %3, align 8
  br label %172

27:                                               ; preds = %21, %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @ARRISEMPTY(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @copy_intArrayType(i32* %32)
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @ARRISEMPTY(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @copy_intArrayType(i32* %39)
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %163, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ARRNELEMS(i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ARRNELEMS(i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @ARRPTR(i32* %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i32* @ARRPTR(i32* %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32* @new_intArrayType(i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @ARRPTR(i32* %57)
  store i32* %58, i32** %13, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %123, %44
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %124

69:                                               ; preds = %67
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %69
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %123

92:                                               ; preds = %69
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %92
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  br label %122

113:                                              ; preds = %92
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %13, align 8
  store i32 %119, i32* %120, align 4
  br label %122

122:                                              ; preds = %113, %104
  br label %123

123:                                              ; preds = %122, %81
  br label %59

124:                                              ; preds = %67
  br label %125

125:                                              ; preds = %129, %124
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %13, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %13, align 8
  store i32 %135, i32* %136, align 4
  br label %125

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %143, %138
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %13, align 8
  store i32 %149, i32* %150, align 4
  br label %139

152:                                              ; preds = %139
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32* @ARRPTR(i32* %155)
  %157 = ptrtoint i32* %154 to i64
  %158 = ptrtoint i32* %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 4
  %161 = trunc i64 %160 to i32
  %162 = call i32* @resize_intArrayType(i32* %153, i32 %161)
  store i32* %162, i32** %6, align 8
  br label %163

163:                                              ; preds = %152, %41
  %164 = load i32*, i32** %6, align 8
  %165 = call i32 @ARRNELEMS(i32* %164)
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  %169 = call i32* @_int_unique(i32* %168)
  store i32* %169, i32** %6, align 8
  br label %170

170:                                              ; preds = %167, %163
  %171 = load i32*, i32** %6, align 8
  store i32* %171, i32** %3, align 8
  br label %172

172:                                              ; preds = %170, %25
  %173 = load i32*, i32** %3, align 8
  ret i32* %173
}

declare dso_local i32 @CHECKARRVALID(i32*) #1

declare dso_local i64 @ARRISEMPTY(i32*) #1

declare dso_local i32* @new_intArrayType(i32) #1

declare dso_local i32* @copy_intArrayType(i32*) #1

declare dso_local i32 @ARRNELEMS(i32*) #1

declare dso_local i32* @ARRPTR(i32*) #1

declare dso_local i32* @resize_intArrayType(i32*, i32) #1

declare dso_local i32* @_int_unique(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
