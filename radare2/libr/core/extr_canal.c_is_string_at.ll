; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_canal.c_is_string_at.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_canal.c_is_string_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32, i32*)* @is_string_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @is_string_at(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [128 x i64], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = bitcast [128 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 1024, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = call i64* @calloc(i32 256, i32 1)
  store i64* %16, i64** %11, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %19
  store i8* null, i8** %4, align 8
  br label %160

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i64*, i64** %11, align 8
  %31 = call i32 @r_io_read_at(i32 %28, i32 %29, i64* %30, i32 255)
  %32 = load i64*, i64** %11, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 255
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = call i32 @is_string(i64* %34, i32 256, i32* %10)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64*, i64** %11, align 8
  %45 = bitcast i64* %44 to i8*
  store i8* %45, i8** %4, align 8
  br label %160

46:                                               ; preds = %25
  %47 = load i64*, i64** %11, align 8
  %48 = bitcast i64* %47 to i32*
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = ashr i32 %52, 32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @UT32_MAX, align 4
  %57 = load i32, i32* %13, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %111

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 4096
  br i1 %68, label %69, label %111

69:                                               ; preds = %64
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = ashr i32 %73, 32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @UT32_MAX, align 4
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %80
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %89 = call i32 @r_io_read_at(i32 %86, i32 %87, i64* %88, i32 1024)
  %90 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 127
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %92 = call i32 @is_string(i64* %91, i32 128, i32* %10)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %83
  %96 = load i64*, i64** %11, align 8
  %97 = bitcast i64* %96 to i8*
  %98 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %99 = bitcast i64* %98 to i8*
  %100 = call i32 @strcpy(i8* %97, i8* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %95
  %107 = load i64*, i64** %11, align 8
  %108 = bitcast i64* %107 to i8*
  store i8* %108, i8** %4, align 8
  br label %160

109:                                              ; preds = %83
  br label %110

110:                                              ; preds = %109, %80
  br label %138

111:                                              ; preds = %64, %59
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %117 = call i32 @r_io_read_at(i32 %114, i32 %115, i64* %116, i32 1024)
  %118 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 127
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %120 = call i32 @is_string(i64* %119, i32 1024, i32* %10)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %111
  %124 = load i64*, i64** %11, align 8
  %125 = bitcast i64* %124 to i8*
  %126 = getelementptr inbounds [128 x i64], [128 x i64]* %8, i64 0, i64 0
  %127 = bitcast i64* %126 to i8*
  %128 = call i32 @strcpy(i8* %125, i8* %127)
  %129 = load i32*, i32** %7, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %123
  %135 = load i64*, i64** %11, align 8
  %136 = bitcast i64* %135 to i8*
  store i8* %136, i8** %4, align 8
  br label %160

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137, %110
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  %142 = load i64*, i64** %11, align 8
  %143 = call i32 @free(i64* %142)
  store i32 -1, i32* %10, align 4
  br label %151

144:                                              ; preds = %138
  %145 = load i32*, i32** %7, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %141
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i64*, i64** %11, align 8
  %156 = bitcast i64* %155 to i8*
  br label %158

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi i8* [ %156, %154 ], [ null, %157 ]
  store i8* %159, i8** %4, align 8
  br label %160

160:                                              ; preds = %158, %134, %106, %43, %24
  %161 = load i8*, i8** %4, align 8
  ret i8* %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64* @calloc(i32, i32) #2

declare dso_local i32 @r_io_read_at(i32, i32, i64*, i32) #2

declare dso_local i32 @is_string(i64*, i32, i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @free(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
