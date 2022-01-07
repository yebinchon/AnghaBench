; ModuleID = '/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_register_bound_parameter_to_sqlite.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sqlite3/extr_sqlite3.c_register_bound_parameter_to_sqlite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_sqlite3_bound_param = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }

@sqlite3_param_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.php_sqlite3_bound_param*, %struct.TYPE_3__*)* @register_bound_parameter_to_sqlite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_bound_parameter_to_sqlite(%struct.php_sqlite3_bound_param* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.php_sqlite3_bound_param*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.php_sqlite3_bound_param* %0, %struct.php_sqlite3_bound_param** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ALLOC_HASHTABLE(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @sqlite3_param_dtor, align 4
  %18 = call i32 @zend_hash_init(i32* %16, i32 13, i32* null, i32 %17, i32 0)
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  br label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %24 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %89

27:                                               ; preds = %22
  %28 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %29 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @ZSTR_VAL(i32* %30)
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 58
  br i1 %35, label %36, label %71

36:                                               ; preds = %27
  %37 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %38 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i8* @ZSTR_VAL(i32* %39)
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 64
  br i1 %44, label %45, label %71

45:                                               ; preds = %36
  %46 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %47 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @ZSTR_LEN(i32* %48)
  %50 = add nsw i64 %49, 1
  %51 = call i32* @zend_string_alloc(i64 %50, i32 0)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i8* @ZSTR_VAL(i32* %52)
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 58, i8* %54, align 1
  %55 = load i32*, i32** %7, align 8
  %56 = call i8* @ZSTR_VAL(i32* %55)
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %59 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @ZSTR_VAL(i32* %60)
  %62 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %63 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @ZSTR_LEN(i32* %64)
  %66 = add nsw i64 %65, 1
  %67 = call i32 @memmove(i8* %57, i8* %61, i64 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %70 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  br label %78

71:                                               ; preds = %36, %27
  %72 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %73 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32* @zend_string_copy(i32* %74)
  %76 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %77 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %71, %45
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %83 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @ZSTR_VAL(i32* %84)
  %86 = call i32 @sqlite3_bind_parameter_index(i32 %81, i8* %85)
  %87 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %88 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %78, %22
  %90 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %91 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %96 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %101 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @zend_string_release_ex(i32* %102, i32 0)
  br label %104

104:                                              ; preds = %99, %94
  store i32 0, i32* %3, align 4
  br label %136

105:                                              ; preds = %89
  %106 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %107 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, 1
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32*, i32** %6, align 8
  %112 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %113 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @zend_hash_index_del(i32* %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %105
  %117 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %118 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %124 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %127 = call i32 @zend_hash_update_mem(i32* %122, i32* %125, %struct.php_sqlite3_bound_param* %126, i32 16)
  br label %135

128:                                              ; preds = %116
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %131 = getelementptr inbounds %struct.php_sqlite3_bound_param, %struct.php_sqlite3_bound_param* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.php_sqlite3_bound_param*, %struct.php_sqlite3_bound_param** %4, align 8
  %134 = call i32 @zend_hash_index_update_mem(i32* %129, i32 %132, %struct.php_sqlite3_bound_param* %133, i32 16)
  br label %135

135:                                              ; preds = %128, %121
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %104
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ALLOC_HASHTABLE(i32*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32* @zend_string_alloc(i64, i32) #1

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32* @zend_string_copy(i32*) #1

declare dso_local i32 @sqlite3_bind_parameter_index(i32, i8*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @zend_hash_index_del(i32*, i32) #1

declare dso_local i32 @zend_hash_update_mem(i32*, i32*, %struct.php_sqlite3_bound_param*, i32) #1

declare dso_local i32 @zend_hash_index_update_mem(i32*, i32, %struct.php_sqlite3_bound_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
