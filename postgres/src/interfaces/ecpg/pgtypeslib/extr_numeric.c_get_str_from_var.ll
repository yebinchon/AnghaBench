; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_get_str_from_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_get_str_from_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32* }

@NUMERIC_NAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@NUMERIC_NEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32)* @get_str_from_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_str_from_var(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NUMERIC_NAN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = call i64 @pgtypes_alloc(i32 4)
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %213

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %3, align 8
  br label %213

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %27, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 4
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %58, %41
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = srem i32 %69, 10
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sdiv i32 %77, 10
  store i32 %78, i32* %10, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 -1
  store i32* %86, i32** %84, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %82, %79
  br label %105

96:                                               ; preds = %35, %26
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @Min(i32 %97, i32 %100)
  %102 = call i32 @Max(i32 0, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %96, %95
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @Max(i32 0, i32 %106)
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @Max(i32 0, i32 %110)
  %112 = add nsw i32 %107, %111
  %113 = add nsw i32 %112, 4
  %114 = call i64 @pgtypes_alloc(i32 %113)
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %6, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  store i8* null, i8** %3, align 8
  br label %213

118:                                              ; preds = %105
  %119 = load i8*, i8** %6, align 8
  store i8* %119, i8** %7, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NUMERIC_NEG, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  store i8 45, i8* %126, align 1
  br label %128

128:                                              ; preds = %125, %118
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @Max(i32 %131, i32 0)
  store i32 %132, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %164, %128
  %134 = load i32, i32* %8, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp sle i32 %137, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %136
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 48
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %7, align 8
  store i8 %158, i8* %159, align 1
  br label %164

161:                                              ; preds = %142, %136
  %162 = load i8*, i8** %7, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %7, align 8
  store i8 48, i8* %162, align 1
  br label %164

164:                                              ; preds = %161, %148
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %8, align 4
  br label %133

167:                                              ; preds = %133
  %168 = load i32, i32* %5, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %210

170:                                              ; preds = %167
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %7, align 8
  store i8 46, i8* %171, align 1
  br label %173

173:                                              ; preds = %206, %170
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %5, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp sge i32 %174, %176
  br i1 %177, label %178, label %209

178:                                              ; preds = %173
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp sle i32 %179, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %178
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 48
  %200 = trunc i32 %199 to i8
  %201 = load i8*, i8** %7, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %7, align 8
  store i8 %200, i8* %201, align 1
  br label %206

203:                                              ; preds = %184, %178
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %7, align 8
  store i8 48, i8* %204, align 1
  br label %206

206:                                              ; preds = %203, %190
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %8, align 4
  br label %173

209:                                              ; preds = %173
  br label %210

210:                                              ; preds = %209, %167
  %211 = load i8*, i8** %7, align 8
  store i8 0, i8* %211, align 1
  %212 = load i8*, i8** %6, align 8
  store i8* %212, i8** %3, align 8
  br label %213

213:                                              ; preds = %210, %117, %22, %21
  %214 = load i8*, i8** %3, align 8
  ret i8* %214
}

declare dso_local i64 @pgtypes_alloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
