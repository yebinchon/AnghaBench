; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_ok.c_ok_write.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_bio_ok.c_ok_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i64, i64, i64 }

@OK_BLOCK_BLOCK = common dso_local global i32 0, align 4
@OK_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @ok_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ok_write(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %4, align 4
  br label %191

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_3__* @BIO_get_data(i32* %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %11, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @BIO_next(i32* %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = load i32*, i32** %12, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @BIO_get_init(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25, %17
  store i32 0, i32* %4, align 4
  br label %191

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @sig_out(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %191

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %182, %43
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @BIO_clear_retry_flags(i32* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %89, %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i1 [ false, %54 ], [ %61, %59 ]
  br i1 %63, label %64, label %98

64:                                               ; preds = %62
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @BIO_write(i32* %65, i32* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %64
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @BIO_copy_next_retry(i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @BIO_should_retry(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %191

89:                                               ; preds = %64
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %54

98:                                               ; preds = %62
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %98
  %109 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %98
  %115 = load i8*, i8** %6, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %7, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %114
  store i32 0, i32* %4, align 4
  br label %191

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %122, %125
  %127 = load i32, i32* @OK_BLOCK_SIZE, align 4
  %128 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %129 = add nsw i32 %127, %128
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %121
  %132 = load i32, i32* @OK_BLOCK_SIZE, align 4
  %133 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %134 = add nsw i32 %132, %133
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  br label %141

139:                                              ; preds = %121
  %140 = load i32, i32* %7, align 4
  br label %141

141:                                              ; preds = %139, %131
  %142 = phi i32 [ %138, %131 ], [ %140, %139 ]
  store i32 %142, i32* %9, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @memcpy(i32* %150, i8* %151, i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %7, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i8*, i8** %6, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %6, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @OK_BLOCK_SIZE, align 4
  %170 = load i32, i32* @OK_BLOCK_BLOCK, align 4
  %171 = add nsw i32 %169, %170
  %172 = icmp sge i32 %168, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %141
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @block_out(i32* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @BIO_clear_retry_flags(i32* %178)
  store i32 0, i32* %4, align 4
  br label %191

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %141
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %44, label %185

185:                                              ; preds = %182
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @BIO_clear_retry_flags(i32* %186)
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @BIO_copy_next_retry(i32* %188)
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %185, %177, %120, %87, %42, %32, %15
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_3__* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i64 @BIO_get_init(i32*) #1

declare dso_local i32 @sig_out(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_write(i32*, i32*, i32) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

declare dso_local i32 @BIO_should_retry(i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @block_out(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
