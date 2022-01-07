; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_complete_update_bin.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_complete_update_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__*, i32, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i8*, %struct.TYPE_20__* }

@PROTOCOL_BINARY_RESPONSE_EINVAL = common dso_local global i32 0, align 4
@ITEM_CHUNKED = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_NOT_STORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @complete_update_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_update_bin(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %7 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_EINVAL, align 4
  store i32 %7, i32* %3, align 4
  store i32 136, i32* %4, align 4
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = icmp ne %struct.TYPE_22__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = call i32 @pthread_mutex_lock(i32* %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = call i64 @ITEM_clsid(%struct.TYPE_21__* %27)
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ITEM_CHUNKED, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %1
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = call i8* @ITEM_data(%struct.TYPE_21__* %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 -2
  store i8 13, i8* %53, align 1
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = call i8* @ITEM_data(%struct.TYPE_21__* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  store i8 10, i8* %61, align 1
  br label %115

62:                                               ; preds = %1
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %6, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %62
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %6, align 8
  br label %83

83:                                               ; preds = %79, %62
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  %91 = icmp sge i32 %90, 2
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  store i8 13, i8* %101, align 1
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %104, i64 %109
  store i8 10, i8* %110, align 1
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %83, %45
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %121 = call i32 @store_item(%struct.TYPE_21__* %116, i32 %119, %struct.TYPE_22__* %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  switch i32 %122, label %155 [
    i32 129, label %123
    i32 138, label %126
    i32 137, label %130
    i32 136, label %134
    i32 128, label %134
    i32 135, label %134
  ]

123:                                              ; preds = %115
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %125 = call i32 @write_bin_response(%struct.TYPE_22__* %124, i32* null, i32 0, i32 0, i32 0)
  br label %155

126:                                              ; preds = %115
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %128 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, align 4
  %129 = call i32 @write_bin_error(%struct.TYPE_22__* %127, i32 %128, i32* null, i32 0)
  br label %155

130:                                              ; preds = %115
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %132 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %133 = call i32 @write_bin_error(%struct.TYPE_22__* %131, i32 %132, i32* null, i32 0)
  br label %155

134:                                              ; preds = %115, %115, %115
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 134
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, align 4
  store i32 %140, i32* %3, align 4
  br label %151

141:                                              ; preds = %134
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 131
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  store i32 %147, i32* %3, align 4
  br label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_NOT_STORED, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %146
  br label %151

151:                                              ; preds = %150, %139
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @write_bin_error(%struct.TYPE_22__* %152, i32 %153, i32* null, i32 0)
  br label %155

155:                                              ; preds = %151, %115, %130, %126, %123
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = call i32 @item_remove(%struct.TYPE_21__* %158)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %161, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @ITEM_clsid(%struct.TYPE_21__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i8* @ITEM_data(%struct.TYPE_21__*) #1

declare dso_local i32 @store_item(%struct.TYPE_21__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @write_bin_response(%struct.TYPE_22__*, i32*, i32, i32, i32) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_22__*, i32, i32*, i32) #1

declare dso_local i32 @item_remove(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
