; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_ssl_add_cipherspec_sslv3.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-ssl.c_ssl_add_cipherspec_sslv3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @ssl_add_cipherspec_sslv3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ssl_add_cipherspec_sslv3(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @ssl_hello_size(i8* %14)
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @ssl_hello_size(i8* %18)
  %20 = add nsw i32 %19, 2
  %21 = call i8* @REALLOC(i8* %17, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %26, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 6
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 16
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 7
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = or i32 %37, %42
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %43, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  store i64 43, i64* %12, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %12, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl i32 %63, 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %64, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 2
  store i64 %74, i64* %13, align 8
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %3
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %90, %91
  %93 = sub i64 %89, %92
  %94 = call i32 @memmove(i8* %83, i8* %88, i64 %93)
  %95 = load i32, i32* %5, align 4
  %96 = lshr i32 %95, 8
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %99, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 %97, i8* %102, align 1
  %103 = load i32, i32* %5, align 4
  %104 = lshr i32 %103, 0
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %107, %108
  %110 = add i64 %109, 1
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  store i8 %105, i8* %111, align 1
  br label %137

112:                                              ; preds = %3
  %113 = load i8*, i8** %7, align 8
  %114 = load i64, i64* %13, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %13, align 8
  %122 = sub i64 %120, %121
  %123 = call i32 @memmove(i8* %116, i8* %119, i64 %122)
  %124 = load i32, i32* %5, align 4
  %125 = lshr i32 %124, 8
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %7, align 8
  %128 = load i64, i64* %13, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8 %126, i8* %129, align 1
  %130 = load i32, i32* %5, align 4
  %131 = lshr i32 %130, 0
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %7, align 8
  %134 = load i64, i64* %13, align 8
  %135 = add i64 %134, 1
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 %132, i8* %136, align 1
  br label %137

137:                                              ; preds = %112, %77
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 2
  store i64 %139, i64* %11, align 8
  %140 = load i64, i64* %11, align 8
  %141 = lshr i64 %140, 8
  %142 = trunc i64 %141 to i8
  %143 = load i8*, i8** %7, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  store i8 %142, i8* %145, align 1
  %146 = load i64, i64* %11, align 8
  %147 = lshr i64 %146, 0
  %148 = trunc i64 %147 to i8
  %149 = load i8*, i8** %7, align 8
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 %148, i8* %152, align 1
  %153 = load i64, i64* %10, align 8
  %154 = add i64 %153, 2
  store i64 %154, i64* %10, align 8
  %155 = load i64, i64* %10, align 8
  %156 = lshr i64 %155, 16
  %157 = trunc i64 %156 to i8
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 6
  store i8 %157, i8* %159, align 1
  %160 = load i64, i64* %10, align 8
  %161 = lshr i64 %160, 8
  %162 = trunc i64 %161 to i8
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 7
  store i8 %162, i8* %164, align 1
  %165 = load i64, i64* %10, align 8
  %166 = lshr i64 %165, 0
  %167 = trunc i64 %166 to i8
  %168 = load i8*, i8** %7, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 8
  store i8 %167, i8* %169, align 1
  %170 = load i64, i64* %9, align 8
  %171 = add i64 %170, 2
  store i64 %171, i64* %9, align 8
  %172 = load i64, i64* %9, align 8
  %173 = lshr i64 %172, 8
  %174 = trunc i64 %173 to i8
  %175 = load i8*, i8** %7, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 3
  store i8 %174, i8* %176, align 1
  %177 = load i64, i64* %9, align 8
  %178 = lshr i64 %177, 0
  %179 = trunc i64 %178 to i8
  %180 = load i8*, i8** %7, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 4
  store i8 %179, i8* %181, align 1
  %182 = load i8*, i8** %7, align 8
  ret i8* %182
}

declare dso_local i32 @ssl_hello_size(i8*) #1

declare dso_local i8* @REALLOC(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
