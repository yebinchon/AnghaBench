; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_read_file.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i8* }

@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%llu: Read %zd bytes.\00", align 1
@D_WEB_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%llu: Read data: '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%llu: Out of input file data.\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%llu: Read the whole file.\00", align 1
@web_server_mode = common dso_local global i64 0, align 8
@WEB_SERVER_MODE_STATIC_THREADED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"%llu: read data failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @web_client_read_file(%struct.web_client* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.web_client* %0, %struct.web_client** %3, align 8
  %7 = load %struct.web_client*, %struct.web_client** %3, align 8
  %8 = getelementptr inbounds %struct.web_client, %struct.web_client* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.web_client*, %struct.web_client** %3, align 8
  %12 = getelementptr inbounds %struct.web_client, %struct.web_client* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %10, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %1
  %22 = load %struct.web_client*, %struct.web_client** %3, align 8
  %23 = getelementptr inbounds %struct.web_client, %struct.web_client* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.web_client*, %struct.web_client** %3, align 8
  %27 = getelementptr inbounds %struct.web_client, %struct.web_client* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.web_client*, %struct.web_client** %3, align 8
  %31 = getelementptr inbounds %struct.web_client, %struct.web_client* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %29, %35
  %37 = call i32 @buffer_need_bytes(%struct.TYPE_4__* %25, i64 %36)
  br label %38

38:                                               ; preds = %21, %1
  %39 = load %struct.web_client*, %struct.web_client** %3, align 8
  %40 = getelementptr inbounds %struct.web_client, %struct.web_client* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.web_client*, %struct.web_client** %3, align 8
  %44 = getelementptr inbounds %struct.web_client, %struct.web_client* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %42, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  store i64 0, i64* %2, align 8
  br label %213

54:                                               ; preds = %38
  %55 = load %struct.web_client*, %struct.web_client** %3, align 8
  %56 = getelementptr inbounds %struct.web_client, %struct.web_client* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.web_client*, %struct.web_client** %3, align 8
  %60 = getelementptr inbounds %struct.web_client, %struct.web_client* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %58, %64
  store i64 %65, i64* %4, align 8
  %66 = load %struct.web_client*, %struct.web_client** %3, align 8
  %67 = getelementptr inbounds %struct.web_client, %struct.web_client* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.web_client*, %struct.web_client** %3, align 8
  %70 = getelementptr inbounds %struct.web_client, %struct.web_client* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.web_client*, %struct.web_client** %3, align 8
  %76 = getelementptr inbounds %struct.web_client, %struct.web_client* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8, i8* %74, i64 %80
  %82 = load i64, i64* %4, align 8
  %83 = call i64 @read(i64 %68, i8* %81, i64 %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp sgt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i64 @likely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %160

89:                                               ; preds = %54
  %90 = load %struct.web_client*, %struct.web_client** %3, align 8
  %91 = getelementptr inbounds %struct.web_client, %struct.web_client* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.web_client*, %struct.web_client** %3, align 8
  %99 = getelementptr inbounds %struct.web_client, %struct.web_client* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %97
  store i64 %104, i64* %102, align 8
  %105 = load %struct.web_client*, %struct.web_client** %3, align 8
  %106 = getelementptr inbounds %struct.web_client, %struct.web_client* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.web_client*, %struct.web_client** %3, align 8
  %112 = getelementptr inbounds %struct.web_client, %struct.web_client* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i8, i8* %110, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load i32, i32* @D_WEB_CLIENT, align 4
  %119 = load %struct.web_client*, %struct.web_client** %3, align 8
  %120 = getelementptr inbounds %struct.web_client, %struct.web_client* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i32 (i32, i8*, i32, ...) @debug(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %121, i64 %122)
  %124 = load i32, i32* @D_WEB_DATA, align 4
  %125 = load %struct.web_client*, %struct.web_client** %3, align 8
  %126 = getelementptr inbounds %struct.web_client, %struct.web_client* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.web_client*, %struct.web_client** %3, align 8
  %129 = getelementptr inbounds %struct.web_client, %struct.web_client* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = call i32 (i32, i8*, i32, ...) @debug(i32 %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %127, i8* %135)
  %137 = load %struct.web_client*, %struct.web_client** %3, align 8
  %138 = call i32 @web_client_enable_wait_send(%struct.web_client* %137)
  %139 = load %struct.web_client*, %struct.web_client** %3, align 8
  %140 = getelementptr inbounds %struct.web_client, %struct.web_client* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %89
  %145 = load %struct.web_client*, %struct.web_client** %3, align 8
  %146 = getelementptr inbounds %struct.web_client, %struct.web_client* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.web_client*, %struct.web_client** %3, align 8
  %152 = getelementptr inbounds %struct.web_client, %struct.web_client* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %150, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load %struct.web_client*, %struct.web_client** %3, align 8
  %158 = call i32 @web_client_disable_wait_receive(%struct.web_client* %157)
  br label %159

159:                                              ; preds = %156, %144, %89
  br label %211

160:                                              ; preds = %54
  %161 = load i64, i64* %5, align 8
  %162 = icmp eq i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i64 @likely(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %160
  %167 = load i32, i32* @D_WEB_CLIENT, align 4
  %168 = load %struct.web_client*, %struct.web_client** %3, align 8
  %169 = getelementptr inbounds %struct.web_client, %struct.web_client* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i32, i8*, i32, ...) @debug(i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  %172 = load %struct.web_client*, %struct.web_client** %3, align 8
  %173 = call i32 @web_client_disable_wait_receive(%struct.web_client* %172)
  %174 = load i32, i32* @D_WEB_CLIENT, align 4
  %175 = load %struct.web_client*, %struct.web_client** %3, align 8
  %176 = getelementptr inbounds %struct.web_client, %struct.web_client* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, i32, ...) @debug(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  %179 = load i64, i64* @web_server_mode, align 8
  %180 = load i64, i64* @WEB_SERVER_MODE_STATIC_THREADED, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %166
  %183 = load %struct.web_client*, %struct.web_client** %3, align 8
  %184 = getelementptr inbounds %struct.web_client, %struct.web_client* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.web_client*, %struct.web_client** %3, align 8
  %187 = getelementptr inbounds %struct.web_client, %struct.web_client* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %182
  %191 = load %struct.web_client*, %struct.web_client** %3, align 8
  %192 = getelementptr inbounds %struct.web_client, %struct.web_client* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @close(i64 %193)
  br label %195

195:                                              ; preds = %190, %182
  br label %196

196:                                              ; preds = %195, %166
  %197 = load %struct.web_client*, %struct.web_client** %3, align 8
  %198 = getelementptr inbounds %struct.web_client, %struct.web_client* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.web_client*, %struct.web_client** %3, align 8
  %201 = getelementptr inbounds %struct.web_client, %struct.web_client* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  br label %210

202:                                              ; preds = %160
  %203 = load i32, i32* @D_WEB_CLIENT, align 4
  %204 = load %struct.web_client*, %struct.web_client** %3, align 8
  %205 = getelementptr inbounds %struct.web_client, %struct.web_client* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32, i8*, i32, ...) @debug(i32 %203, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  %208 = load %struct.web_client*, %struct.web_client** %3, align 8
  %209 = call i32 @WEB_CLIENT_IS_DEAD(%struct.web_client* %208)
  br label %210

210:                                              ; preds = %202, %196
  br label %211

211:                                              ; preds = %210, %159
  %212 = load i64, i64* %5, align 8
  store i64 %212, i64* %2, align 8
  br label %213

213:                                              ; preds = %211, %53
  %214 = load i64, i64* %2, align 8
  ret i64 %214
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_need_bytes(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @read(i64, i8*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @web_client_enable_wait_send(%struct.web_client*) #1

declare dso_local i32 @web_client_disable_wait_receive(%struct.web_client*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @WEB_CLIENT_IS_DEAD(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
