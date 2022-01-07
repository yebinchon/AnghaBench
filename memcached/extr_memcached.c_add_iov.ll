; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_add_iov.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_add_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, %struct.msghdr*, i32 }
%struct.msghdr = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }

@IOV_MAX = common dso_local global i64 0, align 8
@UDP_MAX_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @add_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_iov(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @IS_UDP(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %132

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %128, %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load %struct.msghdr*, %struct.msghdr** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %23, i64 %28
  store %struct.msghdr* %29, %struct.msghdr** %8, align 8
  %30 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IOV_MAX, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %20
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UDP_MAX_PAYLOAD_SIZE, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35, %20
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = call i32 @add_msghdr(%struct.TYPE_7__* %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load %struct.msghdr*, %struct.msghdr** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %46, i64 %51
  store %struct.msghdr* %52, %struct.msghdr** %8, align 8
  br label %53

53:                                               ; preds = %41, %35
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i64 @ensure_iov_space(%struct.TYPE_7__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %198

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load i64, i64* @UDP_MAX_PAYLOAD_SIZE, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load i64, i64* @UDP_MAX_PAYLOAD_SIZE, align 8
  %75 = sub nsw i64 %73, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %81

80:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load %struct.msghdr*, %struct.msghdr** %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %84, i64 %89
  store %struct.msghdr* %90, %struct.msghdr** %8, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %93 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %96 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i8* %91, i8** %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %102 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %105 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %100, i32* %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %120 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8* %126, i8** %6, align 8
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %81
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %20, label %131

131:                                              ; preds = %128
  br label %197

132:                                              ; preds = %3
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load %struct.msghdr*, %struct.msghdr** %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %135, i64 %140
  store %struct.msghdr* %141, %struct.msghdr** %8, align 8
  %142 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %143 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IOV_MAX, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %132
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %149 = call i32 @add_msghdr(%struct.TYPE_7__* %148)
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load %struct.msghdr*, %struct.msghdr** %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %152, i64 %157
  store %struct.msghdr* %158, %struct.msghdr** %8, align 8
  br label %159

159:                                              ; preds = %147, %132
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %161 = call i64 @ensure_iov_space(%struct.TYPE_7__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 -1, i32* %4, align 4
  br label %198

164:                                              ; preds = %159
  %165 = load i8*, i8** %6, align 8
  %166 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %167 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %170 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  store i8* %165, i8** %173, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %176 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %175, i32 0, i32 1
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %179 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i32 %174, i32* %182, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, %184
  store i64 %188, i64* %186, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %194 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %194, align 8
  br label %197

197:                                              ; preds = %164, %131
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %197, %163, %57
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IS_UDP(i32) #1

declare dso_local i32 @add_msghdr(%struct.TYPE_7__*) #1

declare dso_local i64 @ensure_iov_space(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
