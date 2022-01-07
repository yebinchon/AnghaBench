; ModuleID = '/home/carl/AnghaBench/mongoose/examples/restful_server/extr_restful_server.c_main.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/restful_server/extr_restful_server.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mg_mgr = type { i8* }
%struct.mg_connection = type { i32 }
%struct.mg_bind_opts = type { i8**, i8* }

@DIRSEP = common dso_local global i32 0, align 4
@s_http_server_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@s_http_port = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Unknown option: [%s]\0A\00", align 1
@ev_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Error starting server on port %s: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Starting RESTful server on port %s, serving %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mg_mgr, align 8
  %7 = alloca %struct.mg_connection*, align 8
  %8 = alloca %struct.mg_bind_opts, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 @mg_mgr_init(%struct.mg_mgr* %6, i32* null)
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @DIRSEP, align 4
  %20 = call i8* @strrchr(i8* %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i8*, i8** %10, align 8
  store i8 0, i8* %23, align 1
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  br label %27

27:                                               ; preds = %22, %15, %2
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %189, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %192

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %6, i32 0, i32 0
  store i8* %51, i8** %52, align 8
  br label %188

53:                                               ; preds = %40, %32
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  br label %187

73:                                               ; preds = %61, %53
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** @s_http_port, align 8
  br label %186

93:                                               ; preds = %81, %73
  %94 = load i8**, i8*** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %93
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 1), align 8
  br label %185

113:                                              ; preds = %101, %93
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %113
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 2), align 8
  br label %184

133:                                              ; preds = %121, %113
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 3), align 8
  br label %183

153:                                              ; preds = %141, %133
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @strcmp(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %153
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %4, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 4), align 8
  br label %182

173:                                              ; preds = %161, %153
  %174 = load i32, i32* @stderr, align 4
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %179)
  %181 = call i32 @exit(i32 1) #3
  unreachable

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182, %146
  br label %184

184:                                              ; preds = %183, %126
  br label %185

185:                                              ; preds = %184, %106
  br label %186

186:                                              ; preds = %185, %86
  br label %187

187:                                              ; preds = %186, %66
  br label %188

188:                                              ; preds = %187, %45
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %28

192:                                              ; preds = %28
  %193 = call i32 @memset(%struct.mg_bind_opts* %8, i32 0, i32 16)
  %194 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %8, i32 0, i32 0
  store i8** %11, i8*** %194, align 8
  %195 = load i8*, i8** @s_http_port, align 8
  %196 = load i32, i32* @ev_handler, align 4
  %197 = bitcast %struct.mg_bind_opts* %8 to { i8**, i8* }*
  %198 = getelementptr inbounds { i8**, i8* }, { i8**, i8* }* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds { i8**, i8* }, { i8**, i8* }* %197, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = call %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr* %6, i8* %195, i32 %196, i8** %199, i8* %201)
  store %struct.mg_connection* %202, %struct.mg_connection** %7, align 8
  %203 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %204 = icmp eq %struct.mg_connection* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %192
  %206 = load i32, i32* @stderr, align 4
  %207 = load i8*, i8** @s_http_port, align 8
  %208 = getelementptr inbounds %struct.mg_bind_opts, %struct.mg_bind_opts* %8, i32 0, i32 0
  %209 = load i8**, i8*** %208, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %206, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %207, i8* %210)
  %212 = call i32 @exit(i32 1) #3
  unreachable

213:                                              ; preds = %192
  %214 = load %struct.mg_connection*, %struct.mg_connection** %7, align 8
  %215 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %214)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 6), align 8
  %216 = load i8*, i8** @s_http_port, align 8
  %217 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_http_server_opts, i32 0, i32 0), align 8
  %218 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i8* %216, i8* %217)
  br label %219

219:                                              ; preds = %219, %213
  %220 = call i32 @mg_mgr_poll(%struct.mg_mgr* %6, i32 1000)
  br label %219
}

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.mg_bind_opts*, i32, i32) #1

declare dso_local %struct.mg_connection* @mg_bind_opt(%struct.mg_mgr*, i8*, i32, i8**, i8*) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @mg_mgr_poll(%struct.mg_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
