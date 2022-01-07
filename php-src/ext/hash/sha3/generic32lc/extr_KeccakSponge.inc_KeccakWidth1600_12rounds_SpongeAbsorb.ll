; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/sha3/generic32lc/extr_KeccakSponge.inc_KeccakWidth1600_12rounds_SpongeAbsorb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/sha3/generic32lc/extr_KeccakSponge.inc_KeccakWidth1600_12rounds_SpongeAbsorb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@SnP_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SpongeAbsorb(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %129

22:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %127, %22
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %128

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = icmp uge i64 %34, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %33
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %41, %42
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %64, %40
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp uge i64 %45, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @SnP_AddBytes(i32 %52, i8* %53, i32 0, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SnP_Permute(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %9, align 8
  br label %44

69:                                               ; preds = %44
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %8, align 8
  br label %127

73:                                               ; preds = %33, %28
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %78, %81
  %83 = load i32, i32* %12, align 4
  %84 = icmp ugt i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %86, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %85, %73
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %8, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @SnP_AddBytes(i32 %98, i8* %99, i32 %102, i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %11, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %91
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @SnP_Permute(i32 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %91
  br label %127

127:                                              ; preds = %126, %69
  br label %24

128:                                              ; preds = %24
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %21
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @SnP_AddBytes(i32, i8*, i32, i32) #1

declare dso_local i32 @SnP_Permute(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
