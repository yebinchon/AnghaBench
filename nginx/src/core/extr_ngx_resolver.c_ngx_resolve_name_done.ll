; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolve_name_done.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolve_name_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_19__*, %struct.TYPE_16__, i32, %struct.TYPE_19__*, %struct.TYPE_18__*, i32, %struct.TYPE_14__*, i64, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, i32, i32, i32, i32, i32 }

@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"resolve name done: %i\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_RESOLVE_TIMEDOUT = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not cancel %V resolving\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_resolve_name_done(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__**, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 10
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %4, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ngx_log_debug1(i32 %11, i32 %14, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %222

24:                                               ; preds = %1
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %28 = icmp ne %struct.TYPE_19__* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = call i32 @ngx_del_timer(%struct.TYPE_19__* %39)
  br label %41

41:                                               ; preds = %36, %29, %24
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %120

46:                                               ; preds = %41
  store i64 0, i64* %3, align 8
  br label %47

47:                                               ; preds = %111, %46
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %114

53:                                               ; preds = %47
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = icmp ne %struct.TYPE_19__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  call void @ngx_resolve_name_done(%struct.TYPE_19__* %69)
  br label %70

70:                                               ; preds = %62, %53
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = icmp ne %struct.TYPE_14__* %77, null
  br i1 %78, label %79, label %100

79:                                               ; preds = %70
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = load i64, i64* %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = call i32 @ngx_resolver_free(%struct.TYPE_17__* %80, %struct.TYPE_14__* %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = call i32 @ngx_resolver_free(%struct.TYPE_17__* %91, %struct.TYPE_14__* %98)
  br label %100

100:                                              ; preds = %79, %70
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i64, i64* %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = call i32 @ngx_resolver_free(%struct.TYPE_17__* %101, %struct.TYPE_14__* %109)
  br label %111

111:                                              ; preds = %100
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %3, align 8
  br label %47

114:                                              ; preds = %47
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = call i32 @ngx_resolver_free(%struct.TYPE_17__* %115, %struct.TYPE_14__* %118)
  br label %120

120:                                              ; preds = %114, %41
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @NGX_AGAIN, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @NGX_RESOLVE_TIMEDOUT, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %171

132:                                              ; preds = %126, %120
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 6
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %7, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %137 = icmp ne %struct.TYPE_18__* %136, null
  br i1 %137, label %138, label %170

138:                                              ; preds = %132
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  store %struct.TYPE_19__** %140, %struct.TYPE_19__*** %6, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  store %struct.TYPE_19__* %143, %struct.TYPE_19__** %5, align 8
  br label %144

144:                                              ; preds = %156, %138
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = icmp ne %struct.TYPE_19__* %145, null
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %150 = icmp eq %struct.TYPE_19__* %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %6, align 8
  store %struct.TYPE_19__* %154, %struct.TYPE_19__** %155, align 8
  br label %172

156:                                              ; preds = %147
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 5
  store %struct.TYPE_19__** %158, %struct.TYPE_19__*** %6, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %5, align 8
  br label %144

162:                                              ; preds = %144
  %163 = load i32, i32* @NGX_LOG_ALERT, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 4
  %169 = call i32 @ngx_log_error(i32 %163, i32 %166, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %168)
  br label %170

170:                                              ; preds = %162, %132
  br label %171

171:                                              ; preds = %170, %126
  br label %172

172:                                              ; preds = %171, %151
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  %184 = call i32 @ngx_resolver_expire(%struct.TYPE_17__* %179, i32* %181, i32* %183)
  br label %192

185:                                              ; preds = %172
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  %191 = call i32 @ngx_resolver_expire(%struct.TYPE_17__* %186, i32* %188, i32* %190)
  br label %192

192:                                              ; preds = %185, %178
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = icmp ne %struct.TYPE_19__* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %200, align 8
  %202 = call i32 @ngx_resolver_free_locked(%struct.TYPE_17__* %198, %struct.TYPE_19__* %201)
  br label %203

203:                                              ; preds = %197, %192
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %206 = call i32 @ngx_resolver_free_locked(%struct.TYPE_17__* %204, %struct.TYPE_19__* %205)
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %203
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %215 = call i64 @ngx_resolver_resend_empty(%struct.TYPE_17__* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %213
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = call i32 @ngx_del_timer(%struct.TYPE_19__* %220)
  br label %222

222:                                              ; preds = %23, %217, %213, %203
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_resolver_free(%struct.TYPE_17__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @ngx_resolver_expire(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @ngx_resolver_free_locked(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i64 @ngx_resolver_resend_empty(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
