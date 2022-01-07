; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_write.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.bio_bio_st*, i32 }
%struct.bio_bio_st = type { i64, i64, i64, i32*, i64, i64, i32* }

@BIO_F_BIO_WRITE = common dso_local global i32 0, align 4
@BIO_R_BROKEN_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @bio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_write(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bio_bio_st*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = call i32 @BIO_clear_retry_flags(%struct.TYPE_5__* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21, %3
  store i32 0, i32* %4, align 4
  br label %183

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.bio_bio_st*, %struct.bio_bio_st** %30, align 8
  store %struct.bio_bio_st* %31, %struct.bio_bio_st** %10, align 8
  %32 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %33 = icmp ne %struct.bio_bio_st* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %37 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %43 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %49 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %51 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %28
  %55 = load i32, i32* @BIO_F_BIO_WRITE, align 4
  %56 = load i32, i32* @BIO_R_BROKEN_PIPE, align 4
  %57 = call i32 @BIOerr(i32 %55, i32 %56)
  store i32 -1, i32* %4, align 4
  br label %183

58:                                               ; preds = %28
  %59 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %60 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %63 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %69 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %72 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = call i32 @BIO_set_retry_write(%struct.TYPE_5__* %76)
  store i32 -1, i32* %4, align 4
  br label %183

78:                                               ; preds = %58
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %81 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %84 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = icmp ugt i64 %79, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %90 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %93 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %88, %78
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp ugt i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  br label %102

102:                                              ; preds = %177, %96
  %103 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %104 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %105, %106
  %108 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %109 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ule i64 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %115 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %118 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %116, %119
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %123 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp uge i64 %121, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %102
  %127 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %128 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %130, %129
  store i64 %131, i64* %11, align 8
  br label %132

132:                                              ; preds = %126, %102
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %133, %134
  %136 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %137 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ule i64 %135, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i64, i64* %9, align 8
  store i64 %141, i64* %12, align 8
  br label %148

142:                                              ; preds = %132
  %143 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %144 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = sub i64 %145, %146
  store i64 %147, i64* %12, align 8
  br label %148

148:                                              ; preds = %142, %140
  %149 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %150 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %11, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i8*, i8** %6, align 8
  %155 = load i64, i64* %12, align 8
  %156 = call i32 @memcpy(i32* %153, i8* %154, i64 %155)
  %157 = load i64, i64* %12, align 8
  %158 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %159 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %163 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.bio_bio_st*, %struct.bio_bio_st** %10, align 8
  %166 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sle i64 %164, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %9, align 8
  %173 = sub i64 %172, %171
  store i64 %173, i64* %9, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 %174
  store i8* %176, i8** %6, align 8
  br label %177

177:                                              ; preds = %148
  %178 = load i64, i64* %9, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %102, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* %8, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %180, %75, %54, %27
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i32 @BIO_clear_retry_flags(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @BIO_set_retry_write(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
