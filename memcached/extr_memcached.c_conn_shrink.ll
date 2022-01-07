; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_conn_shrink.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_conn_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8*, i8*, i32, i32, i32, %struct.iovec*, %struct.msghdr*, i32**, i32 }
%struct.iovec = type { i32 }
%struct.msghdr = type { i32 }

@READ_BUFFER_HIGHWAT = common dso_local global i64 0, align 8
@DATA_BUFFER_SIZE = common dso_local global i64 0, align 8
@ITEM_LIST_HIGHWAT = common dso_local global i32 0, align 4
@ITEM_LIST_INITIAL = common dso_local global i32 0, align 4
@MSG_LIST_HIGHWAT = common dso_local global i32 0, align 4
@MSG_LIST_INITIAL = common dso_local global i32 0, align 4
@IOV_LIST_HIGHWAT = common dso_local global i32 0, align 4
@IOV_LIST_INITIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @conn_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_shrink(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca %struct.iovec*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @IS_UDP(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %152

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @READ_BUFFER_HIGHWAT, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DATA_BUFFER_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @memmove(i8* %40, i8* %43, i64 %46)
  br label %48

48:                                               ; preds = %37, %29
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* @DATA_BUFFER_SIZE, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @realloc(i8* %51, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @DATA_BUFFER_SIZE, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %48
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %65, %23, %17
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ITEM_LIST_HIGHWAT, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 9
  %80 = load i32**, i32*** %79, align 8
  %81 = bitcast i32** %80 to i8*
  %82 = load i32, i32* @ITEM_LIST_INITIAL, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @realloc(i8* %81, i32 %85)
  %87 = inttoptr i64 %86 to i32**
  store i32** %87, i32*** %4, align 8
  %88 = load i32**, i32*** %4, align 8
  %89 = icmp ne i32** %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = load i32**, i32*** %4, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 9
  store i32** %91, i32*** %93, align 8
  %94 = load i32, i32* @ITEM_LIST_INITIAL, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %90, %77
  br label %98

98:                                               ; preds = %97, %71
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MSG_LIST_HIGHWAT, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 8
  %107 = load %struct.msghdr*, %struct.msghdr** %106, align 8
  %108 = bitcast %struct.msghdr* %107 to i8*
  %109 = load i32, i32* @MSG_LIST_INITIAL, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i64 @realloc(i8* %108, i32 %112)
  %114 = inttoptr i64 %113 to %struct.msghdr*
  store %struct.msghdr* %114, %struct.msghdr** %5, align 8
  %115 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %116 = icmp ne %struct.msghdr* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 8
  store %struct.msghdr* %118, %struct.msghdr** %120, align 8
  %121 = load i32, i32* @MSG_LIST_INITIAL, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %104
  br label %125

125:                                              ; preds = %124, %98
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @IOV_LIST_HIGHWAT, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %125
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 7
  %134 = load %struct.iovec*, %struct.iovec** %133, align 8
  %135 = bitcast %struct.iovec* %134 to i8*
  %136 = load i32, i32* @IOV_LIST_INITIAL, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i64 @realloc(i8* %135, i32 %139)
  %141 = inttoptr i64 %140 to %struct.iovec*
  store %struct.iovec* %141, %struct.iovec** %6, align 8
  %142 = load %struct.iovec*, %struct.iovec** %6, align 8
  %143 = icmp ne %struct.iovec* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %131
  %145 = load %struct.iovec*, %struct.iovec** %6, align 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  store %struct.iovec* %145, %struct.iovec** %147, align 8
  %148 = load i32, i32* @IOV_LIST_INITIAL, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %144, %131
  br label %152

152:                                              ; preds = %16, %151, %125
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IS_UDP(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
