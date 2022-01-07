; ModuleID = '/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_read_command.c'
source_filename = "/home/carl/AnghaBench/nginx/src/mail/extr_ngx_mail_handler.c_ngx_mail_read_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_21__*, i64, i64)*, i32, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_19__*)* }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_mail_core_module = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"client sent too long command \22%V\22\00", align 1
@NGX_MAIL_PARSE_INVALID_COMMAND = common dso_local global i64 0, align 8
@NGX_IMAP_NEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_mail_read_command(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i64 (%struct.TYPE_21__*, i64, i64)*, i64 (%struct.TYPE_21__*, i64, i64)** %11, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %23, %28
  %30 = call i64 %12(%struct.TYPE_21__* %13, i64 %18, i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @NGX_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = call i32 @ngx_mail_close_connection(%struct.TYPE_21__* %38)
  %40 = load i64, i64* @NGX_ERROR, align 8
  store i64 %40, i64* %3, align 8
  br label %157

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %45
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @NGX_AGAIN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ngx_handle_read_event(i32 %59, i32 0)
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = call i32 @ngx_mail_session_internal_server_error(%struct.TYPE_19__* %64)
  %66 = load i64, i64* @NGX_ERROR, align 8
  store i64 %66, i64* %3, align 8
  br label %157

67:                                               ; preds = %56
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %72, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %80, i64* %3, align 8
  br label %157

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %52
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = load i32, i32* @ngx_mail_core_module, align 4
  %85 = call %struct.TYPE_20__* @ngx_mail_get_module_srv_conf(%struct.TYPE_19__* %83, i32 %84)
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %9, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64 (%struct.TYPE_19__*)*, i64 (%struct.TYPE_19__*)** %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = call i64 %90(%struct.TYPE_19__* %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @NGX_AGAIN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %137

96:                                               ; preds = %82
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %101, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i64, i64* %7, align 8
  store i64 %109, i64* %3, align 8
  br label %157

110:                                              ; preds = %96
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %115, %120
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i64 %121, i64* %122, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i64 %127, i64* %128, align 8
  %129 = load i32, i32* @NGX_LOG_INFO, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ngx_log_error(i32 %129, i32 %132, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %8)
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load i64, i64* @NGX_MAIL_PARSE_INVALID_COMMAND, align 8
  store i64 %136, i64* %3, align 8
  br label %157

137:                                              ; preds = %82
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* @NGX_IMAP_NEXT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* @NGX_MAIL_PARSE_INVALID_COMMAND, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %137
  %146 = load i64, i64* %7, align 8
  store i64 %146, i64* %3, align 8
  br label %157

147:                                              ; preds = %141
  %148 = load i64, i64* %7, align 8
  %149 = load i64, i64* @NGX_ERROR, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = call i32 @ngx_mail_close_connection(%struct.TYPE_21__* %152)
  %154 = load i64, i64* @NGX_ERROR, align 8
  store i64 %154, i64* %3, align 8
  br label %157

155:                                              ; preds = %147
  %156 = load i64, i64* @NGX_OK, align 8
  store i64 %156, i64* %3, align 8
  br label %157

157:                                              ; preds = %155, %151, %145, %110, %108, %79, %63, %37
  %158 = load i64, i64* %3, align 8
  ret i64 %158
}

declare dso_local i32 @ngx_mail_close_connection(%struct.TYPE_21__*) #1

declare dso_local i64 @ngx_handle_read_event(i32, i32) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @ngx_mail_get_module_srv_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
