; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha256.c_sha256_process_bytes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_sha256.c_sha256_process_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha256_ctx = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.sha256_ctx*)* @sha256_process_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha256_process_bytes(i8* %0, i64 %1, %struct.sha256_ctx* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sha256_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sha256_ctx* %2, %struct.sha256_ctx** %6, align 8
  %10 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %11 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %83

14:                                               ; preds = %3
  %15 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 128, %18
  %20 = load i64, i64* %5, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  br label %27

24:                                               ; preds = %14
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 128, %25
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i64 [ %23, %22 ], [ %26, %24 ]
  store i64 %28, i64* %8, align 8
  %29 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i8* @memcpy(i8* %33, i8* %34, i64 %35)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %44, 64
  br i1 %45, label %46, label %76

46:                                               ; preds = %27
  %47 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = and i64 %52, -64
  %54 = trunc i64 %53 to i32
  %55 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %56 = call i32 @sha256_process_block(i8* %49, i32 %54, %struct.sha256_ctx* %55)
  %57 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 63
  store i64 %60, i64* %58, align 8
  %61 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %67, %68
  %70 = and i64 %69, -64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @memcpy(i8* %63, i8* %71, i64 %74)
  br label %76

76:                                               ; preds = %46, %27
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %4, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %5, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %76, %3
  %84 = load i64, i64* %5, align 8
  %85 = icmp uge i64 %84, 64
  br i1 %85, label %86, label %122

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = urem i64 %88, 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %95, %91
  %93 = load i64, i64* %5, align 8
  %94 = icmp ugt i64 %93, 64
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = call i8* @memcpy(i8* %98, i8* %99, i64 64)
  %101 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %102 = call i32 @sha256_process_block(i8* %100, i32 64, %struct.sha256_ctx* %101)
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 64
  store i8* %104, i8** %4, align 8
  %105 = load i64, i64* %5, align 8
  %106 = sub i64 %105, 64
  store i64 %106, i64* %5, align 8
  br label %92

107:                                              ; preds = %92
  br label %121

108:                                              ; preds = %86
  %109 = load i8*, i8** %4, align 8
  %110 = load i64, i64* %5, align 8
  %111 = and i64 %110, -64
  %112 = trunc i64 %111 to i32
  %113 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %114 = call i32 @sha256_process_block(i8* %109, i32 %112, %struct.sha256_ctx* %113)
  %115 = load i8*, i8** %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = and i64 %116, -64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8* %118, i8** %4, align 8
  %119 = load i64, i64* %5, align 8
  %120 = and i64 %119, 63
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %108, %107
  br label %122

122:                                              ; preds = %121, %83
  %123 = load i64, i64* %5, align 8
  %124 = icmp ugt i64 %123, 0
  br i1 %124, label %125, label %163

125:                                              ; preds = %122
  %126 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %127 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %9, align 8
  %129 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %130 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8*, i8** %4, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i8* @memcpy(i8* %133, i8* %134, i64 %135)
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp uge i64 %140, 64
  br i1 %141, label %142, label %159

142:                                              ; preds = %125
  %143 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %144 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %147 = call i32 @sha256_process_block(i8* %145, i32 64, %struct.sha256_ctx* %146)
  %148 = load i64, i64* %9, align 8
  %149 = sub i64 %148, 64
  store i64 %149, i64* %9, align 8
  %150 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %151 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %154 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 64
  %157 = load i64, i64* %9, align 8
  %158 = call i8* @memcpy(i8* %152, i8* %156, i64 %157)
  br label %159

159:                                              ; preds = %142, %125
  %160 = load i64, i64* %9, align 8
  %161 = load %struct.sha256_ctx*, %struct.sha256_ctx** %6, align 8
  %162 = getelementptr inbounds %struct.sha256_ctx, %struct.sha256_ctx* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %159, %122
  ret void
}

declare dso_local i8* @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sha256_process_block(i8*, i32, %struct.sha256_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
