; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_sparse_array.c_OPENSSL_SA_set.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_sparse_array.c_OPENSSL_SA_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32, i32 }

@SA_BLOCK_MAX_LEVELS = common dso_local global i32 0, align 4
@OPENSSL_SA_BLOCK_BITS = common dso_local global i32 0, align 4
@SA_BLOCK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OPENSSL_SA_set(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %146

16:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SA_BLOCK_MAX_LEVELS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* @OPENSSL_SA_BLOCK_BITS, align 4
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %31

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %17

31:                                               ; preds = %26, %17
  br label %32

32:                                               ; preds = %54, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = call i8* (...) @alloc_node()
  %40 = bitcast i8* %39 to i8**
  store i8** %40, i8*** %11, align 8
  %41 = load i8**, i8*** %11, align 8
  %42 = icmp eq i8** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %146

44:                                               ; preds = %38
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = bitcast i8** %47 to i8*
  %49 = load i8**, i8*** %11, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %48, i8** %50, align 8
  %51 = load i8**, i8*** %11, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i8** %51, i8*** %53, align 8
  br label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  store i8** %72, i8*** %11, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %109, %69
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @OPENSSL_SA_BLOCK_BITS, align 4
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 %82, %83
  %85 = ashr i32 %81, %84
  %86 = load i32, i32* @SA_BLOCK_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %8, align 4
  %88 = load i8**, i8*** %11, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %80
  %95 = call i8* (...) @alloc_node()
  %96 = load i8**, i8*** %11, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  store i8* %95, i8** %99, align 8
  %100 = icmp eq i8* %95, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %146

102:                                              ; preds = %94, %80
  %103 = load i8**, i8*** %11, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = bitcast i8* %107 to i8**
  store i8** %108, i8*** %11, align 8
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %9, align 4
  br label %77

112:                                              ; preds = %77
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SA_BLOCK_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i8**, i8*** %11, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8** %118, i8*** %11, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %112
  %122 = load i8**, i8*** %11, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 4
  br label %143

130:                                              ; preds = %121, %112
  %131 = load i8*, i8** %7, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i8**, i8*** %11, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %137, %133, %130
  br label %143

143:                                              ; preds = %142, %125
  %144 = load i8*, i8** %7, align 8
  %145 = load i8**, i8*** %11, align 8
  store i8* %144, i8** %145, align 8
  store i32 1, i32* %4, align 4
  br label %146

146:                                              ; preds = %143, %101, %43, %15
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i8* @alloc_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
