; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_transmit.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i32 (%struct.TYPE_13__*, %struct.msghdr*, i32)*, i32, %struct.TYPE_11__*, %struct.msghdr* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.msghdr = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64 }

@TRANSMIT_INCOMPLETE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EV_WRITE = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't update event\0A\00", align 1
@conn_closing = common dso_local global i32 0, align 4
@TRANSMIT_HARD_ERROR = common dso_local global i32 0, align 4
@TRANSMIT_SOFT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to write, and not due to blocking\00", align 1
@conn_read = common dso_local global i32 0, align 4
@TRANSMIT_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmit(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = icmp ne %struct.TYPE_13__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = load %struct.msghdr*, %struct.msghdr** %19, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %20, i64 %23
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %28, %17, %1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %186

41:                                               ; preds = %33
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = load %struct.msghdr*, %struct.msghdr** %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %44, i64 %47
  store %struct.msghdr* %48, %struct.msghdr** %5, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i32 (%struct.TYPE_13__*, %struct.msghdr*, i32)*, i32 (%struct.TYPE_13__*, %struct.msghdr*, i32)** %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %53 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %54 = call i32 %51(%struct.TYPE_13__* %52, %struct.msghdr* %53, i32 0)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %134

57:                                               ; preds = %41
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = call i32 @pthread_mutex_lock(i32* %62)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %64
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = call i32 @pthread_mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %93, %57
  %79 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %80 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %86 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %84, %89
  br label %91

91:                                               ; preds = %83, %78
  %92 = phi i1 [ false, %78 ], [ %90, %83 ]
  br i1 %92, label %93, label %109

93:                                               ; preds = %91
  %94 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %95 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %4, align 4
  %101 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %102 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, -1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %106 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 1
  store %struct.TYPE_12__* %108, %struct.TYPE_12__** %106, align 8
  br label %78

109:                                              ; preds = %91
  %110 = load i32, i32* %4, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %114 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %113, i32 0, i32 1
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %117, %119
  %121 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %122 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  store i64 %120, i64* %124, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %127 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %126, i32 0, i32 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, %125
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %112, %109
  %133 = load i32, i32* @TRANSMIT_INCOMPLETE, align 4
  store i32 %133, i32* %2, align 4
  br label %188

134:                                              ; preds = %41
  %135 = load i32, i32* %4, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %165

137:                                              ; preds = %134
  %138 = load i64, i64* @errno, align 8
  %139 = load i64, i64* @EAGAIN, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* @errno, align 8
  %143 = load i64, i64* @EWOULDBLOCK, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %141, %137
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = load i32, i32* @EV_WRITE, align 4
  %148 = load i32, i32* @EV_PERSIST, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @update_event(%struct.TYPE_13__* %146, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %145
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @settings, i32 0, i32 0), align 8
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = load i32, i32* @conn_closing, align 4
  %161 = call i32 @conn_set_state(%struct.TYPE_13__* %159, i32 %160)
  %162 = load i32, i32* @TRANSMIT_HARD_ERROR, align 4
  store i32 %162, i32* %2, align 4
  br label %188

163:                                              ; preds = %145
  %164 = load i32, i32* @TRANSMIT_SOFT_ERROR, align 4
  store i32 %164, i32* %2, align 4
  br label %188

165:                                              ; preds = %141, %134
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @settings, i32 0, i32 0), align 8
  %167 = icmp sgt i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 @perror(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %165
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @IS_UDP(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %170
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = load i32, i32* @conn_read, align 4
  %179 = call i32 @conn_set_state(%struct.TYPE_13__* %177, i32 %178)
  br label %184

180:                                              ; preds = %170
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %182 = load i32, i32* @conn_closing, align 4
  %183 = call i32 @conn_set_state(%struct.TYPE_13__* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %176
  %185 = load i32, i32* @TRANSMIT_HARD_ERROR, align 4
  store i32 %185, i32* %2, align 4
  br label %188

186:                                              ; preds = %33
  %187 = load i32, i32* @TRANSMIT_COMPLETE, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %184, %163, %158, %132
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @update_event(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @IS_UDP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
