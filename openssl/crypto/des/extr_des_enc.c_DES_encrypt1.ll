; ModuleID = '/home/carl/AnghaBench/openssl/crypto/des/extr_des_enc.c_DES_encrypt1.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/des/extr_des_enc.c_DES_encrypt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_encrypt1(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @IP(i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ROTATE(i32 %21, i32 29)
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 4294967295
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ROTATE(i32 %26, i32 29)
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 4294967295
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %11, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %87

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @D_ENCRYPT(i32 %39, i32 %40, i32 0)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @D_ENCRYPT(i32 %42, i32 %43, i32 2)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @D_ENCRYPT(i32 %45, i32 %46, i32 4)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @D_ENCRYPT(i32 %48, i32 %49, i32 6)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @D_ENCRYPT(i32 %51, i32 %52, i32 8)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @D_ENCRYPT(i32 %54, i32 %55, i32 10)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @D_ENCRYPT(i32 %57, i32 %58, i32 12)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @D_ENCRYPT(i32 %60, i32 %61, i32 14)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @D_ENCRYPT(i32 %63, i32 %64, i32 16)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @D_ENCRYPT(i32 %66, i32 %67, i32 18)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @D_ENCRYPT(i32 %69, i32 %70, i32 20)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @D_ENCRYPT(i32 %72, i32 %73, i32 22)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @D_ENCRYPT(i32 %75, i32 %76, i32 24)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @D_ENCRYPT(i32 %78, i32 %79, i32 26)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @D_ENCRYPT(i32 %81, i32 %82, i32 28)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @D_ENCRYPT(i32 %84, i32 %85, i32 30)
  br label %136

87:                                               ; preds = %3
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @D_ENCRYPT(i32 %88, i32 %89, i32 30)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @D_ENCRYPT(i32 %91, i32 %92, i32 28)
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @D_ENCRYPT(i32 %94, i32 %95, i32 26)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @D_ENCRYPT(i32 %97, i32 %98, i32 24)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @D_ENCRYPT(i32 %100, i32 %101, i32 22)
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @D_ENCRYPT(i32 %103, i32 %104, i32 20)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @D_ENCRYPT(i32 %106, i32 %107, i32 18)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @D_ENCRYPT(i32 %109, i32 %110, i32 16)
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @D_ENCRYPT(i32 %112, i32 %113, i32 14)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @D_ENCRYPT(i32 %115, i32 %116, i32 12)
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @D_ENCRYPT(i32 %118, i32 %119, i32 10)
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @D_ENCRYPT(i32 %121, i32 %122, i32 8)
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @D_ENCRYPT(i32 %124, i32 %125, i32 6)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @D_ENCRYPT(i32 %127, i32 %128, i32 4)
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @D_ENCRYPT(i32 %130, i32 %131, i32 2)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @D_ENCRYPT(i32 %133, i32 %134, i32 0)
  br label %136

136:                                              ; preds = %87, %38
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @ROTATE(i32 %137, i32 3)
  %139 = sext i32 %138 to i64
  %140 = and i64 %139, 4294967295
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @ROTATE(i32 %142, i32 3)
  %144 = sext i32 %143 to i64
  %145 = and i64 %144, 4294967295
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @FP(i32 %147, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %153, i32* %155, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  ret void
}

declare dso_local i32 @IP(i32, i32) #1

declare dso_local i32 @ROTATE(i32, i32) #1

declare dso_local i32 @D_ENCRYPT(i32, i32, i32) #1

declare dso_local i32 @FP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
