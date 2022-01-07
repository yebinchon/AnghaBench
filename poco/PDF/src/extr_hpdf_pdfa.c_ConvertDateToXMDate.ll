; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_ConvertDateToXMDate.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_ConvertDateToXMDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@HPDF_INVALID_PARAMETER = common dso_local global i64 0, align 8
@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Z\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ConvertDateToXMDate(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @HPDF_INVALID_PARAMETER, align 8
  store i64 %10, i64* %3, align 8
  br label %205

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* @HPDF_INVALID_PARAMETER, align 8
  store i64 %16, i64* %3, align 8
  br label %205

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 68
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 58
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17
  %30 = load i64, i64* @HPDF_INVALID_PARAMETER, align 8
  store i64 %30, i64* %3, align 8
  br label %205

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %5, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %34, i32* %36, i32 4)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @HPDF_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %3, align 8
  br label %205

43:                                               ; preds = %31
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  store i8* %45, i8** %5, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %46, i32* bitcast ([2 x i8]* @.str to i32*), i32 1)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @HPDF_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %6, align 8
  store i64 %52, i64* %3, align 8
  br label %205

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %54, i32* %56, i32 2)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @HPDF_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %205

63:                                               ; preds = %53
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %66, i32* bitcast ([2 x i8]* @.str to i32*), i32 1)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @HPDF_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i64, i64* %6, align 8
  store i64 %72, i64* %3, align 8
  br label %205

73:                                               ; preds = %63
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %74, i32* %76, i32 2)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @HPDF_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %3, align 8
  br label %205

83:                                               ; preds = %73
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  store i8* %85, i8** %5, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %86, i32* bitcast ([2 x i8]* @.str.1 to i32*), i32 1)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @HPDF_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %3, align 8
  br label %205

93:                                               ; preds = %83
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %94, i32* %96, i32 2)
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @HPDF_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i64, i64* %6, align 8
  store i64 %102, i64* %3, align 8
  br label %205

103:                                              ; preds = %93
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %5, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %106, i32* bitcast ([2 x i8]* @.str.2 to i32*), i32 1)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @HPDF_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i64, i64* %6, align 8
  store i64 %112, i64* %3, align 8
  br label %205

113:                                              ; preds = %103
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %114, i32* %116, i32 2)
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @HPDF_OK, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i64, i64* %6, align 8
  store i64 %122, i64* %3, align 8
  br label %205

123:                                              ; preds = %113
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  store i8* %125, i8** %5, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %127 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %126, i32* bitcast ([2 x i8]* @.str.2 to i32*), i32 1)
  store i64 %127, i64* %6, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @HPDF_OK, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i64, i64* %6, align 8
  store i64 %132, i64* %3, align 8
  br label %205

133:                                              ; preds = %123
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %134, i32* %136, i32 2)
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @HPDF_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i64, i64* %6, align 8
  store i64 %142, i64* %3, align 8
  br label %205

143:                                              ; preds = %133
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 2
  store i8* %145, i8** %5, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %152, i32* bitcast ([2 x i8]* @.str.3 to i32*), i32 1)
  store i64 %153, i64* %6, align 8
  %154 = load i64, i64* %6, align 8
  store i64 %154, i64* %3, align 8
  br label %205

155:                                              ; preds = %143
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 43
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 45
  br i1 %166, label %167, label %199

167:                                              ; preds = %161, %155
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = load i8*, i8** %5, align 8
  %170 = bitcast i8* %169 to i32*
  %171 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %168, i32* %170, i32 3)
  store i64 %171, i64* %6, align 8
  %172 = load i64, i64* %6, align 8
  %173 = load i64, i64* @HPDF_OK, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i64, i64* %6, align 8
  store i64 %176, i64* %3, align 8
  br label %205

177:                                              ; preds = %167
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 4
  store i8* %179, i8** %5, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %180, i32* bitcast ([2 x i8]* @.str.2 to i32*), i32 1)
  store i64 %181, i64* %6, align 8
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* @HPDF_OK, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i64, i64* %6, align 8
  store i64 %186, i64* %3, align 8
  br label %205

187:                                              ; preds = %177
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = bitcast i8* %189 to i32*
  %191 = call i64 @HPDF_Stream_Write(%struct.TYPE_4__* %188, i32* %190, i32 2)
  store i64 %191, i64* %6, align 8
  %192 = load i64, i64* %6, align 8
  %193 = load i64, i64* @HPDF_OK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %187
  %196 = load i64, i64* %6, align 8
  store i64 %196, i64* %3, align 8
  br label %205

197:                                              ; preds = %187
  %198 = load i64, i64* %6, align 8
  store i64 %198, i64* %3, align 8
  br label %205

199:                                              ; preds = %161
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i64, i64* @HPDF_INVALID_PARAMETER, align 8
  %204 = call i64 @HPDF_SetError(i32 %202, i64 %203, i32 0)
  store i64 %204, i64* %3, align 8
  br label %205

205:                                              ; preds = %199, %197, %195, %185, %175, %151, %141, %131, %121, %111, %101, %91, %81, %71, %61, %51, %41, %29, %15, %9
  %206 = load i64, i64* %3, align 8
  ret i64 %206
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @HPDF_Stream_Write(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @HPDF_SetError(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
