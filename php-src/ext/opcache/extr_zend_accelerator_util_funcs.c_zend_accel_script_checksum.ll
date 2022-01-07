; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_script_checksum.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_zend_accelerator_util_funcs.c_zend_accel_script_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@ADLER32_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_accel_script_checksum(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = bitcast i32* %15 to i8*
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = bitcast %struct.TYPE_3__* %17 to i8*
  %19 = ptrtoint i8* %16 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* @ADLER32_INIT, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = bitcast %struct.TYPE_3__* %24 to i8*
  %26 = icmp ult i8* %23, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = bitcast %struct.TYPE_3__* %30 to i8*
  %32 = load i8*, i8** %3, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = call i32 @zend_adler32(i32 %28, i8* %29, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = bitcast %struct.TYPE_3__* %37 to i8*
  %39 = load i8*, i8** %3, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = load i64, i64* %4, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %4, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = bitcast %struct.TYPE_3__* %45 to i8*
  %47 = load i8*, i8** %3, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %27, %1
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @zend_adler32(i32 %54, i8* %55, i64 %56)
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 24
  store i8* %59, i8** %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = sub i64 %60, 24
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @zend_adler32(i32 %65, i8* %66, i64 %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %53
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @zend_adler32(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
