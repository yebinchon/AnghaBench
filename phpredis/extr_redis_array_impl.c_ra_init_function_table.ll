; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_init_function_table.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_init_function_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"EXISTS\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"GETBIT\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"GETRANGE\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"HEXISTS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HGET\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"HGETALL\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"HKEYS\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HLEN\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"HMGET\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"HVALS\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"LINDEX\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"LLEN\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"LRANGE\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"OBJECT\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SCARD\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"SDIFF\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SINTER\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SISMEMBER\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"SMEMBERS\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"SRANDMEMBER\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"STRLEN\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"SUNION\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"TYPE\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"ZCARD\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ZCOUNT\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ZRANGE\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"ZRANK\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ZREVRANGE\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"ZREVRANGEBYSCORE\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"ZREVRANK\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"ZSCORE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_init_function_table(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @ALLOC_HASHTABLE(i32 %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @zend_hash_init(i32 %9, i32 0, i32* null, i32* null, i32 0)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @zend_hash_str_update_ptr(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6, i32* null)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @zend_hash_str_update_ptr(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3, i32* null)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @zend_hash_str_update_ptr(i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6, i32* null)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @zend_hash_str_update_ptr(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8, i32* null)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @zend_hash_str_update_ptr(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7, i32* null)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @zend_hash_str_update_ptr(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4, i32* null)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @zend_hash_str_update_ptr(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7, i32* null)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @zend_hash_str_update_ptr(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5, i32* null)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zend_hash_str_update_ptr(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4, i32* null)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @zend_hash_str_update_ptr(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5, i32* null)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @zend_hash_str_update_ptr(i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 5, i32* null)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @zend_hash_str_update_ptr(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 6, i32* null)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @zend_hash_str_update_ptr(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4, i32* null)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @zend_hash_str_update_ptr(i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 6, i32* null)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @zend_hash_str_update_ptr(i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 6, i32* null)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @zend_hash_str_update_ptr(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 5, i32* null)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @zend_hash_str_update_ptr(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5, i32* null)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @zend_hash_str_update_ptr(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 6, i32* null)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @zend_hash_str_update_ptr(i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 9, i32* null)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @zend_hash_str_update_ptr(i32 %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 8, i32* null)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @zend_hash_str_update_ptr(i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 11, i32* null)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @zend_hash_str_update_ptr(i32 %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 6, i32* null)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @zend_hash_str_update_ptr(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 6, i32* null)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @zend_hash_str_update_ptr(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 4, i32* null)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @zend_hash_str_update_ptr(i32 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 5, i32* null)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @zend_hash_str_update_ptr(i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 6, i32* null)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @zend_hash_str_update_ptr(i32 %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32 6, i32* null)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @zend_hash_str_update_ptr(i32 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i32 5, i32* null)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @zend_hash_str_update_ptr(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 9, i32* null)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @zend_hash_str_update_ptr(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32 16, i32* null)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @zend_hash_str_update_ptr(i32 %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32 8, i32* null)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @zend_hash_str_update_ptr(i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 6, i32* null)
  ret void
}

declare dso_local i32 @ALLOC_HASHTABLE(i32) #1

declare dso_local i32 @zend_hash_init(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @zend_hash_str_update_ptr(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
