; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_match_pattern.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/simple_pattern/extr_simple_pattern.c_match_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_pattern = type { i64, i32, %struct.simple_pattern*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.simple_pattern*, i8*, i64, i8*, i64*)* @match_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_pattern(%struct.simple_pattern* %0, i8* %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.simple_pattern*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  store %struct.simple_pattern* %0, %struct.simple_pattern** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %14 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %196

18:                                               ; preds = %5
  %19 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %20 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %177 [
    i32 129, label %22
    i32 130, label %93
    i32 128, label %143
    i32 131, label %176
  ]

22:                                               ; preds = %18
  %23 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %24 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %197

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %31 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @strstr(i8* %29, i32 %32)
  store i8* %33, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %92

35:                                               ; preds = %28
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = load i8*, i8** %10, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = call i8* @add_wildcarded(i8* %36, i64 %41, i8* %42, i64* %43)
  store i8* %44, i8** %10, align 8
  %45 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %46 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %45, i32 0, i32 2
  %47 = load %struct.simple_pattern*, %struct.simple_pattern** %46, align 8
  %48 = icmp ne %struct.simple_pattern* %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %35
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %52 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %58 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8*, i8** %8, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sub i64 %55, %64
  %66 = load i8*, i8** %10, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = call i8* @add_wildcarded(i8* %54, i64 %65, i8* %66, i64* %67)
  store i8* %68, i8** %10, align 8
  store i32 1, i32* %6, align 4
  br label %197

69:                                               ; preds = %35
  %70 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %71 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %70, i32 0, i32 2
  %72 = load %struct.simple_pattern*, %struct.simple_pattern** %71, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %75 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i64, i64* %9, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sub i64 %78, %83
  %85 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %86 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %84, %87
  %89 = load i8*, i8** %10, align 8
  %90 = load i64*, i64** %11, align 8
  %91 = call i32 @match_pattern(%struct.simple_pattern* %72, i8* %77, i64 %88, i8* %89, i64* %90)
  store i32 %91, i32* %6, align 4
  br label %197

92:                                               ; preds = %28
  br label %195

93:                                               ; preds = %18
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %96 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %99 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @strncmp(i8* %94, i32 %97, i64 %100)
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @unlikely(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %142

106:                                              ; preds = %93
  %107 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %108 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %107, i32 0, i32 2
  %109 = load %struct.simple_pattern*, %struct.simple_pattern** %108, align 8
  %110 = icmp ne %struct.simple_pattern* %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %114 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %119 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %117, %120
  %122 = load i8*, i8** %10, align 8
  %123 = load i64*, i64** %11, align 8
  %124 = call i8* @add_wildcarded(i8* %116, i64 %121, i8* %122, i64* %123)
  store i8* %124, i8** %10, align 8
  store i32 1, i32* %6, align 4
  br label %197

125:                                              ; preds = %106
  %126 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %127 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %126, i32 0, i32 2
  %128 = load %struct.simple_pattern*, %struct.simple_pattern** %127, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %131 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %136 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %134, %137
  %139 = load i8*, i8** %10, align 8
  %140 = load i64*, i64** %11, align 8
  %141 = call i32 @match_pattern(%struct.simple_pattern* %128, i8* %133, i64 %138, i8* %139, i64* %140)
  store i32 %141, i32* %6, align 4
  br label %197

142:                                              ; preds = %93
  br label %195

143:                                              ; preds = %18
  %144 = load i8*, i8** %8, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %147 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %145, %148
  %150 = getelementptr inbounds i8, i8* %144, i64 %149
  %151 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %152 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @strcmp(i8* %150, i32 %153)
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @unlikely(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %143
  %160 = load i8*, i8** %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %163 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = sub i64 %161, %164
  %166 = load i8*, i8** %10, align 8
  %167 = load i64*, i64** %11, align 8
  %168 = call i8* @add_wildcarded(i8* %160, i64 %165, i8* %166, i64* %167)
  store i8* %168, i8** %10, align 8
  %169 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %170 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %169, i32 0, i32 2
  %171 = load %struct.simple_pattern*, %struct.simple_pattern** %170, align 8
  %172 = icmp ne %struct.simple_pattern* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %159
  store i32 1, i32* %6, align 4
  br label %197

174:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %197

175:                                              ; preds = %143
  br label %195

176:                                              ; preds = %18
  br label %177

177:                                              ; preds = %18, %176
  %178 = load i8*, i8** %8, align 8
  %179 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %180 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @strcmp(i8* %178, i32 %181)
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i32 @unlikely(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %177
  %188 = load %struct.simple_pattern*, %struct.simple_pattern** %7, align 8
  %189 = getelementptr inbounds %struct.simple_pattern, %struct.simple_pattern* %188, i32 0, i32 2
  %190 = load %struct.simple_pattern*, %struct.simple_pattern** %189, align 8
  %191 = icmp ne %struct.simple_pattern* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  store i32 1, i32* %6, align 4
  br label %197

193:                                              ; preds = %187
  store i32 0, i32* %6, align 4
  br label %197

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %175, %142, %92
  br label %196

196:                                              ; preds = %195, %5
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %196, %193, %192, %174, %173, %125, %111, %69, %49, %27
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i8* @add_wildcarded(i8*, i64, i8*, i64*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
