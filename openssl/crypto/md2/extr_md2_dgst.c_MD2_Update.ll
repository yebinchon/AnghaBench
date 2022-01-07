; ModuleID = '/home/carl/AnghaBench/openssl/crypto/md2/extr_md2_dgst.c_MD2_Update.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/md2/extr_md2_dgst.c_MD2_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64 }

@MD2_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MD2_Update(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %104

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %79

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %23, %24
  %26 = load i64, i64* @MD2_BLOCK, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %20
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* @MD2_BLOCK, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = call i32 @memcpy(i8* %33, i8* %34, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @md2_block(%struct.TYPE_4__* %41, i8* %44)
  %46 = load i64, i64* @MD2_BLOCK, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %6, align 8
  %53 = load i64, i64* @MD2_BLOCK, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %53, %56
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %7, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %78

62:                                               ; preds = %20
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %73
  store i64 %77, i64* %75, align 8
  store i32 1, i32* %4, align 4
  br label %104

78:                                               ; preds = %28
  br label %79

79:                                               ; preds = %78, %12
  br label %80

80:                                               ; preds = %84, %79
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @MD2_BLOCK, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @md2_block(%struct.TYPE_4__* %85, i8* %86)
  %88 = load i64, i64* @MD2_BLOCK, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 %88
  store i8* %90, i8** %6, align 8
  %91 = load i64, i64* @MD2_BLOCK, align 8
  %92 = load i64, i64* %7, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %7, align 8
  br label %80

94:                                               ; preds = %80
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @memcpy(i8* %95, i8* %96, i64 %97)
  %99 = load i64, i64* %7, align 8
  %100 = trunc i64 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %94, %62, %11
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @md2_block(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
