; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_newcolor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_color.c_newcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colormap = type { i64, i64, i32, %struct.colordesc*, %struct.colordesc* }
%struct.colordesc = type { i64, i64, i32, i32*, i64, i64 }

@COLORLESS = common dso_local global i32 0, align 4
@MAX_COLOR = common dso_local global i32 0, align 4
@REG_ECOLORS = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@NOSUB = common dso_local global i64 0, align 8
@CHR_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.colormap*)* @newcolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newcolor(%struct.colormap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.colormap*, align 8
  %4 = alloca %struct.colordesc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.colordesc*, align 8
  store %struct.colormap* %0, %struct.colormap** %3, align 8
  %7 = call i64 (...) @CISERR()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @COLORLESS, align 4
  store i32 %10, i32* %2, align 4
  br label %199

11:                                               ; preds = %1
  %12 = load %struct.colormap*, %struct.colormap** %3, align 8
  %13 = getelementptr inbounds %struct.colormap, %struct.colormap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = load %struct.colormap*, %struct.colormap** %3, align 8
  %18 = getelementptr inbounds %struct.colormap, %struct.colormap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.colormap*, %struct.colormap** %3, align 8
  %24 = getelementptr inbounds %struct.colormap, %struct.colormap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.colormap*, %struct.colormap** %3, align 8
  %27 = getelementptr inbounds %struct.colormap, %struct.colormap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.colormap*, %struct.colormap** %3, align 8
  %33 = getelementptr inbounds %struct.colormap, %struct.colormap* %32, i32 0, i32 3
  %34 = load %struct.colordesc*, %struct.colordesc** %33, align 8
  %35 = load %struct.colormap*, %struct.colormap** %3, align 8
  %36 = getelementptr inbounds %struct.colormap, %struct.colormap* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %34, i64 %37
  store %struct.colordesc* %38, %struct.colordesc** %4, align 8
  %39 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %40 = call i32 @UNUSEDCOLOR(%struct.colordesc* %39)
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %43 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %49 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.colormap*, %struct.colormap** %3, align 8
  %52 = getelementptr inbounds %struct.colormap, %struct.colormap* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %175

53:                                               ; preds = %11
  %54 = load %struct.colormap*, %struct.colormap** %3, align 8
  %55 = getelementptr inbounds %struct.colormap, %struct.colormap* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load %struct.colormap*, %struct.colormap** %3, align 8
  %59 = getelementptr inbounds %struct.colormap, %struct.colormap* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub i64 %60, 1
  %62 = icmp ult i64 %57, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = load %struct.colormap*, %struct.colormap** %3, align 8
  %65 = getelementptr inbounds %struct.colormap, %struct.colormap* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.colormap*, %struct.colormap** %3, align 8
  %69 = getelementptr inbounds %struct.colormap, %struct.colormap* %68, i32 0, i32 3
  %70 = load %struct.colordesc*, %struct.colordesc** %69, align 8
  %71 = load %struct.colormap*, %struct.colormap** %3, align 8
  %72 = getelementptr inbounds %struct.colormap, %struct.colormap* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %70, i64 %74
  store %struct.colordesc* %75, %struct.colordesc** %4, align 8
  br label %174

76:                                               ; preds = %53
  %77 = load %struct.colormap*, %struct.colormap** %3, align 8
  %78 = getelementptr inbounds %struct.colormap, %struct.colormap* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MAX_COLOR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @REG_ECOLORS, align 4
  %84 = call i32 @CERR(i32 %83)
  %85 = load i32, i32* @COLORLESS, align 4
  store i32 %85, i32* %2, align 4
  br label %199

86:                                               ; preds = %76
  %87 = load %struct.colormap*, %struct.colormap** %3, align 8
  %88 = getelementptr inbounds %struct.colormap, %struct.colormap* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = mul i64 %89, 2
  store i64 %90, i64* %5, align 8
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* @MAX_COLOR, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = icmp ugt i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @MAX_COLOR, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %96, %86
  %101 = load %struct.colormap*, %struct.colormap** %3, align 8
  %102 = getelementptr inbounds %struct.colormap, %struct.colormap* %101, i32 0, i32 3
  %103 = load %struct.colordesc*, %struct.colordesc** %102, align 8
  %104 = load %struct.colormap*, %struct.colormap** %3, align 8
  %105 = getelementptr inbounds %struct.colormap, %struct.colormap* %104, i32 0, i32 4
  %106 = load %struct.colordesc*, %struct.colordesc** %105, align 8
  %107 = icmp eq %struct.colordesc* %103, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %100
  %109 = load i64, i64* %5, align 8
  %110 = mul i64 %109, 48
  %111 = call i64 @MALLOC(i64 %110)
  %112 = inttoptr i64 %111 to %struct.colordesc*
  store %struct.colordesc* %112, %struct.colordesc** %6, align 8
  %113 = load %struct.colordesc*, %struct.colordesc** %6, align 8
  %114 = icmp ne %struct.colordesc* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load %struct.colordesc*, %struct.colordesc** %6, align 8
  %117 = call i32 @VS(%struct.colordesc* %116)
  %118 = load %struct.colormap*, %struct.colormap** %3, align 8
  %119 = getelementptr inbounds %struct.colormap, %struct.colormap* %118, i32 0, i32 4
  %120 = load %struct.colordesc*, %struct.colordesc** %119, align 8
  %121 = call i32 @VS(%struct.colordesc* %120)
  %122 = load %struct.colormap*, %struct.colormap** %3, align 8
  %123 = getelementptr inbounds %struct.colormap, %struct.colormap* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 %124, 48
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(i32 %117, i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %115, %108
  br label %137

129:                                              ; preds = %100
  %130 = load %struct.colormap*, %struct.colormap** %3, align 8
  %131 = getelementptr inbounds %struct.colormap, %struct.colormap* %130, i32 0, i32 3
  %132 = load %struct.colordesc*, %struct.colordesc** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = mul i64 %133, 48
  %135 = call i64 @REALLOC(%struct.colordesc* %132, i64 %134)
  %136 = inttoptr i64 %135 to %struct.colordesc*
  store %struct.colordesc* %136, %struct.colordesc** %6, align 8
  br label %137

137:                                              ; preds = %129, %128
  %138 = load %struct.colordesc*, %struct.colordesc** %6, align 8
  %139 = icmp eq %struct.colordesc* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @REG_ESPACE, align 4
  %142 = call i32 @CERR(i32 %141)
  %143 = load i32, i32* @COLORLESS, align 4
  store i32 %143, i32* %2, align 4
  br label %199

144:                                              ; preds = %137
  %145 = load %struct.colordesc*, %struct.colordesc** %6, align 8
  %146 = load %struct.colormap*, %struct.colormap** %3, align 8
  %147 = getelementptr inbounds %struct.colormap, %struct.colormap* %146, i32 0, i32 3
  store %struct.colordesc* %145, %struct.colordesc** %147, align 8
  %148 = load i64, i64* %5, align 8
  %149 = load %struct.colormap*, %struct.colormap** %3, align 8
  %150 = getelementptr inbounds %struct.colormap, %struct.colormap* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load %struct.colormap*, %struct.colormap** %3, align 8
  %152 = getelementptr inbounds %struct.colormap, %struct.colormap* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load %struct.colormap*, %struct.colormap** %3, align 8
  %156 = getelementptr inbounds %struct.colormap, %struct.colormap* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %157, 1
  %159 = icmp ult i64 %154, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.colormap*, %struct.colormap** %3, align 8
  %163 = getelementptr inbounds %struct.colormap, %struct.colormap* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = load %struct.colormap*, %struct.colormap** %3, align 8
  %167 = getelementptr inbounds %struct.colormap, %struct.colormap* %166, i32 0, i32 3
  %168 = load %struct.colordesc*, %struct.colordesc** %167, align 8
  %169 = load %struct.colormap*, %struct.colormap** %3, align 8
  %170 = getelementptr inbounds %struct.colormap, %struct.colormap* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %168, i64 %172
  store %struct.colordesc* %173, %struct.colordesc** %4, align 8
  br label %174

174:                                              ; preds = %144, %63
  br label %175

175:                                              ; preds = %174, %16
  %176 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %177 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %176, i32 0, i32 5
  store i64 0, i64* %177, align 8
  %178 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %179 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  %180 = load i64, i64* @NOSUB, align 8
  %181 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %182 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %184 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %183, i32 0, i32 3
  store i32* null, i32** %184, align 8
  %185 = load i32, i32* @CHR_MIN, align 4
  %186 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %187 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %189 = getelementptr inbounds %struct.colordesc, %struct.colordesc* %188, i32 0, i32 1
  store i64 0, i64* %189, align 8
  %190 = load %struct.colordesc*, %struct.colordesc** %4, align 8
  %191 = load %struct.colormap*, %struct.colormap** %3, align 8
  %192 = getelementptr inbounds %struct.colormap, %struct.colormap* %191, i32 0, i32 3
  %193 = load %struct.colordesc*, %struct.colordesc** %192, align 8
  %194 = ptrtoint %struct.colordesc* %190 to i64
  %195 = ptrtoint %struct.colordesc* %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 48
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %175, %140, %82, %9
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i64 @CISERR(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSEDCOLOR(%struct.colordesc*) #1

declare dso_local i32 @CERR(i32) #1

declare dso_local i64 @MALLOC(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @VS(%struct.colordesc*) #1

declare dso_local i64 @REALLOC(%struct.colordesc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
