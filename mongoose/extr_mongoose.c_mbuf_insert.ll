; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mbuf_insert.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mbuf_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, i8* }

@MBUF_SIZE_MULTIPLIER = common dso_local global i64 0, align 8
@MBUF_SIZE_MAX_HEADROOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbuf_insert(%struct.mbuf* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = icmp ne %struct.mbuf* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ule i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = sub i64 -1, %36
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %182

41:                                               ; preds = %4
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %44, %45
  %47 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ule i64 %46, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %41
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %66, %67
  %69 = call i32 @memmove(i8* %58, i8* %63, i64 %68)
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %51
  %73 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @memcpy(i8* %77, i8* %78, i64 %79)
  br label %81

81:                                               ; preds = %72, %51
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %180

87:                                               ; preds = %41
  %88 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @MBUF_SIZE_MULTIPLIER, align 8
  %95 = mul i64 %93, %94
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %11, align 8
  %98 = sub i64 %96, %97
  %99 = load i64, i64* @MBUF_SIZE_MAX_HEADROOM, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @MBUF_SIZE_MAX_HEADROOM, align 8
  %104 = add i64 %102, %103
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %101, %87
  %106 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i64 @MBUF_REALLOC(i8* %108, i64 %109)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %10, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %126

114:                                              ; preds = %105
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i64, i64* %11, align 8
  store i64 %119, i64* %12, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i64 @MBUF_REALLOC(i8* %122, i64 %123)
  %125 = inttoptr i64 %124 to i8*
  store i8* %125, i8** %10, align 8
  br label %126

126:                                              ; preds = %118, %114, %105
  %127 = load i8*, i8** %10, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %178

129:                                              ; preds = %126
  %130 = load i8*, i8** %10, align 8
  %131 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %135 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %133, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %129
  %139 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* %7, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %147 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %152 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = sub i64 %153, %154
  %156 = call i32 @memmove(i8* %145, i8* %150, i64 %155)
  br label %157

157:                                              ; preds = %138, %129
  %158 = load i8*, i8** %8, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %162 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = load i64, i64* %7, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8*, i8** %8, align 8
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @memcpy(i8* %165, i8* %166, i64 %167)
  br label %169

169:                                              ; preds = %160, %157
  %170 = load i64, i64* %9, align 8
  %171 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %172 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %177 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  br label %179

178:                                              ; preds = %126
  store i64 0, i64* %9, align 8
  br label %179

179:                                              ; preds = %178, %169
  br label %180

180:                                              ; preds = %179, %81
  %181 = load i64, i64* %9, align 8
  store i64 %181, i64* %5, align 8
  br label %182

182:                                              ; preds = %180, %40
  %183 = load i64, i64* %5, align 8
  ret i64 %183
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @MBUF_REALLOC(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
