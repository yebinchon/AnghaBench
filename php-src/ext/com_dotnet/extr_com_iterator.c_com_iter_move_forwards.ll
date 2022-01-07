; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_iterator.c_com_iter_move_forwards.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_iterator.c_com_iter_move_forwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.php_com_iterator = type { i64, i32, i32, i32, i32, i64, i64 }

@IS_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @com_iter_move_forwards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com_iter_move_forwards(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.php_com_iterator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @Z_PTR(i32 %8)
  %10 = inttoptr i64 %9 to %struct.php_com_iterator*
  store %struct.php_com_iterator* %10, %struct.php_com_iterator** %3, align 8
  %11 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %11, i32 0, i32 3
  %13 = call i32 @VariantClear(i32* %12)
  %14 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %15 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @Z_TYPE(i32 %16)
  %18 = load i64, i64* @IS_UNDEF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %21, i32 0, i32 1
  %23 = call i32 @zval_ptr_dtor(i32* %22)
  %24 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %25 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %24, i32 0, i32 1
  %26 = call i32 @ZVAL_UNDEF(i32* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %29 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %34 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %37 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %36, i32 0, i32 3
  %38 = call i32 @IEnumVARIANT_Next(i64 %35, i32 1, i32* %37, i64* %4)
  %39 = call i64 @SUCCEEDED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load i64, i64* %4, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %46 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %52

49:                                               ; preds = %41, %32
  %50 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %51 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %50, i32 0, i32 0
  store i64 -1, i64* %51, align 8
  br label %94

52:                                               ; preds = %44
  br label %83

53:                                               ; preds = %27
  %54 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %55 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %58 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %63 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %62, i32 0, i32 0
  store i64 -1, i64* %63, align 8
  br label %94

64:                                               ; preds = %53
  %65 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %66 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %70 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %69, i32 0, i32 4
  %71 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %72 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %71, i32 0, i32 3
  %73 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %74 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i64 @php_com_safearray_get_elem(i32* %70, i32* %72, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %81 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %80, i32 0, i32 0
  store i64 -1, i64* %81, align 8
  br label %94

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %52
  %84 = call i32 @ZVAL_NULL(i32* %5)
  %85 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %86 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %85, i32 0, i32 3
  %87 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %88 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @php_com_zval_from_variant(i32* %5, i32* %86, i32 %89)
  %91 = load %struct.php_com_iterator*, %struct.php_com_iterator** %3, align 8
  %92 = getelementptr inbounds %struct.php_com_iterator, %struct.php_com_iterator* %91, i32 0, i32 1
  %93 = call i32 @ZVAL_COPY_VALUE(i32* %92, i32* %5)
  br label %94

94:                                               ; preds = %83, %79, %61, %49
  ret void
}

declare dso_local i64 @Z_PTR(i32) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IEnumVARIANT_Next(i64, i32, i32*, i64*) #1

declare dso_local i64 @php_com_safearray_get_elem(i32*, i32*, i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i32 @php_com_zval_from_variant(i32*, i32*, i32) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
