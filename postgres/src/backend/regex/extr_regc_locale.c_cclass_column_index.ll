; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_cclass_column_index.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_cclass_column_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { i32* }

@MAX_SIMPLE_CHR = common dso_local global i64 0, align 8
@CC_PRINT = common dso_local global i64 0, align 8
@CC_ALNUM = common dso_local global i64 0, align 8
@CC_ALPHA = common dso_local global i64 0, align 8
@CC_ASCII = common dso_local global i64 0, align 8
@CC_BLANK = common dso_local global i64 0, align 8
@CC_CNTRL = common dso_local global i64 0, align 8
@CC_DIGIT = common dso_local global i64 0, align 8
@CC_PUNCT = common dso_local global i64 0, align 8
@CC_XDIGIT = common dso_local global i64 0, align 8
@CC_SPACE = common dso_local global i64 0, align 8
@CC_LOWER = common dso_local global i64 0, align 8
@CC_UPPER = common dso_local global i64 0, align 8
@CC_GRAPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.colormap*, i64)* @cclass_column_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cclass_column_index(%struct.colormap* %0, i64 %1) #0 {
  %3 = alloca %struct.colormap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.colormap* %0, %struct.colormap** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MAX_SIMPLE_CHR, align 8
  %8 = icmp sgt i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.colormap*, %struct.colormap** %3, align 8
  %12 = getelementptr inbounds %struct.colormap, %struct.colormap* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @CC_PRINT, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @pg_wc_isprint(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.colormap*, %struct.colormap** %3, align 8
  %24 = getelementptr inbounds %struct.colormap, %struct.colormap* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @CC_PRINT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %22, %18, %2
  %32 = load %struct.colormap*, %struct.colormap** %3, align 8
  %33 = getelementptr inbounds %struct.colormap, %struct.colormap* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @CC_ALNUM, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @pg_wc_isalnum(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.colormap*, %struct.colormap** %3, align 8
  %45 = getelementptr inbounds %struct.colormap, %struct.colormap* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @CC_ALNUM, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %39, %31
  %53 = load %struct.colormap*, %struct.colormap** %3, align 8
  %54 = getelementptr inbounds %struct.colormap, %struct.colormap* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @CC_ALPHA, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @pg_wc_isalpha(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.colormap*, %struct.colormap** %3, align 8
  %66 = getelementptr inbounds %struct.colormap, %struct.colormap* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @CC_ALPHA, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %64, %60, %52
  %74 = load %struct.colormap*, %struct.colormap** %3, align 8
  %75 = getelementptr inbounds %struct.colormap, %struct.colormap* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @CC_ASCII, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.colormap*, %struct.colormap** %3, align 8
  %84 = getelementptr inbounds %struct.colormap, %struct.colormap* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @CC_BLANK, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.colormap*, %struct.colormap** %3, align 8
  %93 = getelementptr inbounds %struct.colormap, %struct.colormap* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @CC_CNTRL, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.colormap*, %struct.colormap** %3, align 8
  %102 = getelementptr inbounds %struct.colormap, %struct.colormap* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @CC_DIGIT, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %73
  %109 = load i64, i64* %4, align 8
  %110 = call i64 @pg_wc_isdigit(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.colormap*, %struct.colormap** %3, align 8
  %114 = getelementptr inbounds %struct.colormap, %struct.colormap* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @CC_DIGIT, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %112, %108, %73
  %122 = load %struct.colormap*, %struct.colormap** %3, align 8
  %123 = getelementptr inbounds %struct.colormap, %struct.colormap* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @CC_PUNCT, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %121
  %130 = load i64, i64* %4, align 8
  %131 = call i64 @pg_wc_ispunct(i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = load %struct.colormap*, %struct.colormap** %3, align 8
  %135 = getelementptr inbounds %struct.colormap, %struct.colormap* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @CC_PUNCT, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %133, %129, %121
  %143 = load %struct.colormap*, %struct.colormap** %3, align 8
  %144 = getelementptr inbounds %struct.colormap, %struct.colormap* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @CC_XDIGIT, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.colormap*, %struct.colormap** %3, align 8
  %153 = getelementptr inbounds %struct.colormap, %struct.colormap* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @CC_SPACE, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %142
  %160 = load i64, i64* %4, align 8
  %161 = call i64 @pg_wc_isspace(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load %struct.colormap*, %struct.colormap** %3, align 8
  %165 = getelementptr inbounds %struct.colormap, %struct.colormap* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* @CC_SPACE, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %163, %159, %142
  %173 = load %struct.colormap*, %struct.colormap** %3, align 8
  %174 = getelementptr inbounds %struct.colormap, %struct.colormap* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @CC_LOWER, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %172
  %181 = load i64, i64* %4, align 8
  %182 = call i64 @pg_wc_islower(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = load %struct.colormap*, %struct.colormap** %3, align 8
  %186 = getelementptr inbounds %struct.colormap, %struct.colormap* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @CC_LOWER, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %5, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %184, %180, %172
  %194 = load %struct.colormap*, %struct.colormap** %3, align 8
  %195 = getelementptr inbounds %struct.colormap, %struct.colormap* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @CC_UPPER, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %193
  %202 = load i64, i64* %4, align 8
  %203 = call i64 @pg_wc_isupper(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load %struct.colormap*, %struct.colormap** %3, align 8
  %207 = getelementptr inbounds %struct.colormap, %struct.colormap* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @CC_UPPER, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %5, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %205, %201, %193
  %215 = load %struct.colormap*, %struct.colormap** %3, align 8
  %216 = getelementptr inbounds %struct.colormap, %struct.colormap* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @CC_GRAPH, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %214
  %223 = load i64, i64* %4, align 8
  %224 = call i64 @pg_wc_isgraph(i64 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %222
  %227 = load %struct.colormap*, %struct.colormap** %3, align 8
  %228 = getelementptr inbounds %struct.colormap, %struct.colormap* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @CC_GRAPH, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %5, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %226, %222, %214
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pg_wc_isprint(i64) #1

declare dso_local i64 @pg_wc_isalnum(i64) #1

declare dso_local i64 @pg_wc_isalpha(i64) #1

declare dso_local i64 @pg_wc_isdigit(i64) #1

declare dso_local i64 @pg_wc_ispunct(i64) #1

declare dso_local i64 @pg_wc_isspace(i64) #1

declare dso_local i64 @pg_wc_islower(i64) #1

declare dso_local i64 @pg_wc_isupper(i64) #1

declare dso_local i64 @pg_wc_isgraph(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
