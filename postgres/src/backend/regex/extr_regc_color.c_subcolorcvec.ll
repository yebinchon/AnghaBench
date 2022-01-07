; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcolorcvec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_subcolorcvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, %struct.colormap* }
%struct.colormap = type { i32*, i32, i32, i64* }
%struct.cvec = type { i64*, i32, i64*, i32, i64 }
%struct.state = type { i32 }

@COLORLESS = common dso_local global i64 0, align 8
@MAX_SIMPLE_CHR = common dso_local global i64 0, align 8
@PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.cvec*, %struct.state*, %struct.state*)* @subcolorcvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subcolorcvec(%struct.vars* %0, %struct.cvec* %1, %struct.state* %2, %struct.state* %3) #0 {
  %5 = alloca %struct.vars*, align 8
  %6 = alloca %struct.cvec*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca %struct.colormap*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.vars* %0, %struct.vars** %5, align 8
  store %struct.cvec* %1, %struct.cvec** %6, align 8
  store %struct.state* %2, %struct.state** %7, align 8
  store %struct.state* %3, %struct.state** %8, align 8
  %23 = load %struct.vars*, %struct.vars** %5, align 8
  %24 = getelementptr inbounds %struct.vars, %struct.vars* %23, i32 0, i32 1
  %25 = load %struct.colormap*, %struct.colormap** %24, align 8
  store %struct.colormap* %25, %struct.colormap** %9, align 8
  %26 = load i64, i64* @COLORLESS, align 8
  store i64 %26, i64* %10, align 8
  %27 = load %struct.cvec*, %struct.cvec** %6, align 8
  %28 = getelementptr inbounds %struct.cvec, %struct.cvec* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %14, align 8
  %30 = load %struct.cvec*, %struct.cvec** %6, align 8
  %31 = getelementptr inbounds %struct.cvec, %struct.cvec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %15, align 4
  br label %33

33:                                               ; preds = %45, %4
  %34 = load i32, i32* %15, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  %39 = load %struct.vars*, %struct.vars** %5, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.state*, %struct.state** %7, align 8
  %42 = load %struct.state*, %struct.state** %8, align 8
  %43 = call i32 @subcoloronechr(%struct.vars* %39, i64 %40, %struct.state* %41, %struct.state* %42, i64* %10)
  %44 = call i32 (...) @NOERR()
  br label %45

45:                                               ; preds = %36
  %46 = load i64*, i64** %14, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %15, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load %struct.cvec*, %struct.cvec** %6, align 8
  %52 = getelementptr inbounds %struct.cvec, %struct.cvec* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %14, align 8
  %54 = load %struct.cvec*, %struct.cvec** %6, align 8
  %55 = getelementptr inbounds %struct.cvec, %struct.cvec* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %130, %50
  %58 = load i32, i32* %15, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %135

60:                                               ; preds = %57
  %61 = load i64*, i64** %14, align 8
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %12, align 8
  %63 = load i64*, i64** %14, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %60
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %72 = icmp sle i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %13, align 8
  br label %77

75:                                               ; preds = %69
  %76 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  store i64 %78, i64* %16, align 8
  br label %79

79:                                               ; preds = %102, %77
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %16, align 8
  %82 = icmp sle i64 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load %struct.colormap*, %struct.colormap** %9, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i64 @subcolor(%struct.colormap* %84, i64 %85)
  store i64 %86, i64* %17, align 8
  %87 = call i32 (...) @NOERR()
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load %struct.vars*, %struct.vars** %5, align 8
  %93 = getelementptr inbounds %struct.vars, %struct.vars* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PLAIN, align 4
  %96 = load i64, i64* %17, align 8
  %97 = load %struct.state*, %struct.state** %7, align 8
  %98 = load %struct.state*, %struct.state** %8, align 8
  %99 = call i32 @newarc(i32 %94, i32 %95, i64 %96, %struct.state* %97, %struct.state* %98)
  %100 = call i32 (...) @NOERR()
  %101 = load i64, i64* %17, align 8
  store i64 %101, i64* %10, align 8
  br label %102

102:                                              ; preds = %91, %83
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %79

105:                                              ; preds = %79
  br label %106

106:                                              ; preds = %105, %60
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.vars*, %struct.vars** %5, align 8
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load %struct.state*, %struct.state** %7, align 8
  %115 = load %struct.state*, %struct.state** %8, align 8
  %116 = call i32 @subcoloronerange(%struct.vars* %111, i64 %112, i64 %113, %struct.state* %114, %struct.state* %115, i64* %10)
  br label %128

117:                                              ; preds = %106
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.vars*, %struct.vars** %5, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.state*, %struct.state** %7, align 8
  %125 = load %struct.state*, %struct.state** %8, align 8
  %126 = call i32 @subcoloronechr(%struct.vars* %122, i64 %123, %struct.state* %124, %struct.state* %125, i64* %10)
  br label %127

127:                                              ; preds = %121, %117
  br label %128

128:                                              ; preds = %127, %110
  %129 = call i32 (...) @NOERR()
  br label %130

130:                                              ; preds = %128
  %131 = load i64*, i64** %14, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 2
  store i64* %132, i64** %14, align 8
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %15, align 4
  br label %57

135:                                              ; preds = %57
  %136 = load %struct.cvec*, %struct.cvec** %6, align 8
  %137 = getelementptr inbounds %struct.cvec, %struct.cvec* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp uge i64 %138, 0
  br i1 %139, label %140, label %225

140:                                              ; preds = %135
  %141 = load %struct.colormap*, %struct.colormap** %9, align 8
  %142 = getelementptr inbounds %struct.colormap, %struct.colormap* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.cvec*, %struct.cvec** %6, align 8
  %145 = getelementptr inbounds %struct.cvec, %struct.cvec* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %140
  %151 = load %struct.colormap*, %struct.colormap** %9, align 8
  %152 = getelementptr inbounds %struct.colormap, %struct.colormap* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.colormap*, %struct.colormap** %9, align 8
  %155 = getelementptr inbounds %struct.colormap, %struct.colormap* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.cvec*, %struct.cvec** %6, align 8
  %158 = getelementptr inbounds %struct.cvec, %struct.cvec* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  store i32 %153, i32* %160, align 4
  %161 = load %struct.colormap*, %struct.colormap** %9, align 8
  %162 = call i32 @newhicolorcols(%struct.colormap* %161)
  %163 = call i32 (...) @NOERR()
  br label %164

164:                                              ; preds = %150, %140
  %165 = load %struct.colormap*, %struct.colormap** %9, align 8
  %166 = getelementptr inbounds %struct.colormap, %struct.colormap* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.cvec*, %struct.cvec** %6, align 8
  %169 = getelementptr inbounds %struct.cvec, %struct.cvec* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %18, align 4
  %173 = load %struct.colormap*, %struct.colormap** %9, align 8
  %174 = getelementptr inbounds %struct.colormap, %struct.colormap* %173, i32 0, i32 3
  %175 = load i64*, i64** %174, align 8
  store i64* %175, i64** %19, align 8
  store i32 0, i32* %20, align 4
  br label %176

176:                                              ; preds = %221, %164
  %177 = load i32, i32* %20, align 4
  %178 = load %struct.colormap*, %struct.colormap** %9, align 8
  %179 = getelementptr inbounds %struct.colormap, %struct.colormap* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %224

182:                                              ; preds = %176
  store i32 0, i32* %21, align 4
  br label %183

183:                                              ; preds = %217, %182
  %184 = load i32, i32* %21, align 4
  %185 = load %struct.colormap*, %struct.colormap** %9, align 8
  %186 = getelementptr inbounds %struct.colormap, %struct.colormap* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %220

189:                                              ; preds = %183
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %18, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %189
  %195 = load %struct.colormap*, %struct.colormap** %9, align 8
  %196 = load i64*, i64** %19, align 8
  %197 = call i64 @subcolorhi(%struct.colormap* %195, i64* %196)
  store i64 %197, i64* %22, align 8
  %198 = call i32 (...) @NOERR()
  %199 = load i64, i64* %22, align 8
  %200 = load i64, i64* %10, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %194
  %203 = load %struct.vars*, %struct.vars** %5, align 8
  %204 = getelementptr inbounds %struct.vars, %struct.vars* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @PLAIN, align 4
  %207 = load i64, i64* %22, align 8
  %208 = load %struct.state*, %struct.state** %7, align 8
  %209 = load %struct.state*, %struct.state** %8, align 8
  %210 = call i32 @newarc(i32 %205, i32 %206, i64 %207, %struct.state* %208, %struct.state* %209)
  %211 = call i32 (...) @NOERR()
  %212 = load i64, i64* %22, align 8
  store i64 %212, i64* %10, align 8
  br label %213

213:                                              ; preds = %202, %194
  br label %214

214:                                              ; preds = %213, %189
  %215 = load i64*, i64** %19, align 8
  %216 = getelementptr inbounds i64, i64* %215, i32 1
  store i64* %216, i64** %19, align 8
  br label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %21, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %21, align 4
  br label %183

220:                                              ; preds = %183
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %20, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %20, align 4
  br label %176

224:                                              ; preds = %176
  br label %225

225:                                              ; preds = %224, %135
  ret void
}

declare dso_local i32 @subcoloronechr(%struct.vars*, i64, %struct.state*, %struct.state*, i64*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i64 @subcolor(%struct.colormap*, i64) #1

declare dso_local i32 @newarc(i32, i32, i64, %struct.state*, %struct.state*) #1

declare dso_local i32 @subcoloronerange(%struct.vars*, i64, i64, %struct.state*, %struct.state*, i64*) #1

declare dso_local i32 @newhicolorcols(%struct.colormap*) #1

declare dso_local i64 @subcolorhi(%struct.colormap*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
