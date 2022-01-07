; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c__ascii_get_suffix_buf.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c__ascii_get_suffix_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@stats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [45 x i8] c"SERVER_ERROR out of memory making CAS suffix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32)* @_ascii_get_suffix_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_ascii_get_suffix_buf(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = mul i64 %21, 2
  %23 = trunc i64 %22 to i32
  %24 = call i8** @realloc(i8** %16, i32 %23)
  store i8** %24, i8*** %7, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %13
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %29, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i8** %32, i8*** %34, align 8
  br label %40

35:                                               ; preds = %13
  %36 = call i32 (...) @STATS_LOCK()
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats, i32 0, i32 0), align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats, i32 0, i32 0), align 4
  %39 = call i32 (...) @STATS_UNLOCK()
  store i8* null, i8** %3, align 8
  br label %66

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @do_cache_alloc(i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = call i32 (...) @STATS_LOCK()
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats, i32 0, i32 0), align 4
  %54 = call i32 (...) @STATS_UNLOCK()
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = call i32 @out_of_memory(%struct.TYPE_7__* %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %66

57:                                               ; preds = %41
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %57, %50, %35
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i8* @do_cache_alloc(i32) #1

declare dso_local i32 @out_of_memory(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
