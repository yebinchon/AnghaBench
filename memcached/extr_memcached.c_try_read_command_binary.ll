; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_try_read_command_binary.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_try_read_command_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i64, %struct.TYPE_11__, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32 }

@settings = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"<%d Read binary protocol data:\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\0A<%d   \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PROTOCOL_BINARY_REQ = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid magic:  %x\0A\00", align 1
@conn_closing = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"SERVER_ERROR Out of memory allocating headers\00", align 1
@current_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @try_read_command_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_read_command_binary(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 40
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %163

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %4, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 0), align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %55

19:                                               ; preds = %12
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %49, %19
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %29
  %40 = load i32, i32* @stderr, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %12
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = bitcast %struct.TYPE_11__* %57 to i8*
  %60 = bitcast %struct.TYPE_11__* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 40, i1 false)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohs(i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ntohl(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  store i32 %74, i32* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ntohll(i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PROTOCOL_BINARY_REQ, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %55
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @settings, i32 0, i32 0), align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load i32, i32* @stderr, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %98, %95
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = load i32, i32* @conn_closing, align 4
  %109 = call i32 @conn_set_state(%struct.TYPE_12__* %107, i32 %108)
  store i32 -1, i32* %2, align 4
  br label %163

110:                                              ; preds = %55
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 11
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 10
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 9
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = call i64 @add_msghdr(%struct.TYPE_12__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = call i32 @out_of_memory(%struct.TYPE_12__* %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %163

123:                                              ; preds = %110
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 8
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* @current_time, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = call i32 @dispatch_bin_command(%struct.TYPE_12__* %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = sub i64 %155, 40
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, 40
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %123
  store i32 1, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %120, %106, %11
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohll(i32) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @add_msghdr(%struct.TYPE_12__*) #1

declare dso_local i32 @out_of_memory(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dispatch_bin_command(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
