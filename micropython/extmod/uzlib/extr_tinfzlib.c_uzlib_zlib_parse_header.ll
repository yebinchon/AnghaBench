; ModuleID = '/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinfzlib.c_uzlib_zlib_parse_header.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinfzlib.c_uzlib_zlib_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@TINF_DATA_ERROR = common dso_local global i32 0, align 4
@TINF_CHKSUM_ADLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uzlib_zlib_parse_header(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call zeroext i8 @uzlib_get_byte(%struct.TYPE_4__* %6)
  store i8 %7, i8* %4, align 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = call zeroext i8 @uzlib_get_byte(%struct.TYPE_4__* %8)
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = mul nsw i32 256, %11
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %12, %14
  %16 = srem i32 %15, 31
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 15
  %24 = icmp ne i32 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %20
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = ashr i32 %29, 4
  %31 = icmp sgt i32 %30, 7
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %27
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TINF_DATA_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @TINF_CHKSUM_ADLER, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 4
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = ashr i32 %48, 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %41, %39, %32, %25, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local zeroext i8 @uzlib_get_byte(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
