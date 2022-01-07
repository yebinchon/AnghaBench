; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_read.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.bio_bio_st*, i32 }
%struct.bio_bio_st = type { i64, i64, i64, i64, i32*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.bio_bio_st* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @bio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_read(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bio_bio_st*, align 8
  %11 = alloca %struct.bio_bio_st*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = call i32 @BIO_clear_retry_flags(%struct.TYPE_7__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %210

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.bio_bio_st*, %struct.bio_bio_st** %24, align 8
  store %struct.bio_bio_st* %25, %struct.bio_bio_st** %10, align 8
  %26 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %27 = icmp ne %struct.bio_bio_st* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %31 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %30, i32 0, i32 6
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %37 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %36, i32 0, i32 6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.bio_bio_st*, %struct.bio_bio_st** %39, align 8
  store %struct.bio_bio_st* %40, %struct.bio_bio_st** %11, align 8
  %41 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %42 = icmp ne %struct.bio_bio_st* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %46 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %52 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %22
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %22
  store i32 0, i32* %4, align 4
  br label %210

59:                                               ; preds = %55
  %60 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %61 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %66 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %210

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = call i32 @BIO_set_retry_read(%struct.TYPE_7__* %71)
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %75 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ule i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %81 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %88

82:                                               ; preds = %70
  %83 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %84 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %87 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %78
  store i32 -1, i32* %4, align 4
  br label %210

89:                                               ; preds = %59
  %90 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %91 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %97 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i64, i64* %8, align 8
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp ugt i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  br label %105

105:                                              ; preds = %204, %99
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %108 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ule i64 %106, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %114 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %115, %116
  %118 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %119 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ule i64 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %105
  %123 = load i64, i64* %9, align 8
  store i64 %123, i64* %12, align 8
  br label %132

124:                                              ; preds = %105
  %125 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %126 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %129 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = sub i64 %127, %130
  store i64 %131, i64* %12, align 8
  br label %132

132:                                              ; preds = %124, %122
  %133 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %134 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %135, %136
  %138 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %139 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ule i64 %137, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i8*, i8** %6, align 8
  %145 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %146 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %149 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @memcpy(i8* %144, i32* %151, i64 %152)
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %156 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %160 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %132
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %166 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %170 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %173 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ule i64 %171, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %179 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %182 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %163
  %186 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %187 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %186, i32 0, i32 3
  store i64 0, i64* %187, align 8
  br label %188

188:                                              ; preds = %185, %163
  %189 = load i64, i64* %12, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %191, i8** %6, align 8
  br label %200

192:                                              ; preds = %132
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* %9, align 8
  %195 = icmp eq i64 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load %struct.bio_bio_st*, %struct.bio_bio_st** %11, align 8
  %199 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %198, i32 0, i32 3
  store i64 0, i64* %199, align 8
  br label %200

200:                                              ; preds = %192, %188
  %201 = load i64, i64* %12, align 8
  %202 = load i64, i64* %9, align 8
  %203 = sub i64 %202, %201
  store i64 %203, i64* %9, align 8
  br label %204

204:                                              ; preds = %200
  %205 = load i64, i64* %9, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %105, label %207

207:                                              ; preds = %204
  %208 = load i64, i64* %8, align 8
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %207, %88, %69, %58, %21
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BIO_set_retry_read(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
