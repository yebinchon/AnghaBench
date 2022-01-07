; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-icmp.c_handle_icmp.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-icmp.c_handle_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DedupTable = type { i32 }
%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32*, i32*, i32, i32, i32 }

@handle_icmp.echo_reply_dedup = internal global %struct.DedupTable* null, align 8
@Templ_ICMP_echo = common dso_local global i32 0, align 4
@PortStatus_Open = common dso_local global i32 0, align 4
@PortStatus_Closed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_icmp(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
  %7 = alloca %struct.Output*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.PreprocessedInfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %11, align 8
  store i32 %5, i32* %12, align 4
  %25 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %26 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  %28 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %29 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.DedupTable*, %struct.DedupTable** @handle_icmp.echo_reply_dedup, align 8
  %32 = icmp ne %struct.DedupTable* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %6
  %34 = call %struct.DedupTable* (...) @dedup_create()
  store %struct.DedupTable* %34, %struct.DedupTable** @handle_icmp.echo_reply_dedup, align 8
  br label %35

35:                                               ; preds = %33, %6
  %36 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %37 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 24
  %42 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %43 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = or i32 %41, %47
  %49 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %50 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %48, %54
  %56 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %57 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 0
  %62 = or i32 %55, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %64 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 24
  %69 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %70 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %68, %74
  %76 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %77 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %75, %81
  %83 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %84 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 0
  %89 = or i32 %82, %88
  store i32 %89, i32* %17, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %92 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %90, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 24
  %100 = load i8*, i8** %9, align 8
  %101 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %102 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 5
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %100, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl i32 %108, 16
  %110 = or i32 %99, %109
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %113 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 6
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %111, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 8
  %121 = or i32 %110, %120
  %122 = load i8*, i8** %9, align 8
  %123 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %124 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 7
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %122, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl i32 %130, 0
  %132 = or i32 %121, %131
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %13, align 4
  switch i32 %133, label %248 [
    i32 0, label %134
    i32 3, label %163
  ]

134:                                              ; preds = %35
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @Templ_ICMP_echo, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @syn_cookie(i32 %135, i32 %136, i32 %137, i32 0, i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  br label %249

144:                                              ; preds = %134
  %145 = load %struct.DedupTable*, %struct.DedupTable** @handle_icmp.echo_reply_dedup, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @dedup_is_duplicate(%struct.DedupTable* %145, i32 %146, i32 0, i32 %147, i32 0)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %249

151:                                              ; preds = %144
  %152 = load %struct.Output*, %struct.Output** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @PortStatus_Open, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %157 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %160 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @output_report_status(%struct.Output* %152, i32 %153, i32 %154, i32 %155, i32 1, i32 0, i32 0, i32 %158, i32 %161)
  br label %249

163:                                              ; preds = %35
  %164 = load i32, i32* %14, align 4
  switch i32 %164, label %247 [
    i32 0, label %165
    i32 1, label %166
    i32 2, label %167
    i32 3, label %168
  ]

165:                                              ; preds = %163
  br label %247

166:                                              ; preds = %163
  br label %247

167:                                              ; preds = %163
  br label %247

168:                                              ; preds = %163
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %171 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = sub i32 %169, %172
  %174 = icmp ugt i32 %173, 8
  br i1 %174, label %175, label %246

175:                                              ; preds = %168
  %176 = load i8*, i8** %9, align 8
  %177 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %178 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %176, i64 %180
  %182 = getelementptr inbounds i8, i8* %181, i64 8
  %183 = ptrtoint i8* %182 to i32
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %186 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = sub i32 %184, %187
  %189 = add i32 %188, 8
  %190 = call i32 @parse_port_unreachable(i32 %183, i32 %189, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23)
  store i32 %190, i32* %24, align 4
  %191 = load i32, i32* %24, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %175
  br label %249

194:                                              ; preds = %175
  %195 = load %struct.Output*, %struct.Output** %7, align 8
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @matches_me(%struct.Output* %195, i32 %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  br label %249

201:                                              ; preds = %194
  %202 = load i32, i32* %23, align 4
  switch i32 %202, label %245 [
    i32 6, label %203
    i32 17, label %217
    i32 132, label %231
  ]

203:                                              ; preds = %201
  %204 = load %struct.Output*, %struct.Output** %7, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @PortStatus_Closed, align 4
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %23, align 4
  %209 = load i32, i32* %22, align 4
  %210 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %211 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %214 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @output_report_status(%struct.Output* %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 0, i32 %212, i32 %215)
  br label %245

217:                                              ; preds = %201
  %218 = load %struct.Output*, %struct.Output** %7, align 8
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @PortStatus_Closed, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %22, align 4
  %224 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %225 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %228 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @output_report_status(%struct.Output* %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 0, i32 %226, i32 %229)
  br label %245

231:                                              ; preds = %201
  %232 = load %struct.Output*, %struct.Output** %7, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* @PortStatus_Closed, align 4
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* %22, align 4
  %238 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %239 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %11, align 8
  %242 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @output_report_status(%struct.Output* %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 0, i32 %240, i32 %243)
  br label %245

245:                                              ; preds = %201, %231, %217, %203
  br label %246

246:                                              ; preds = %245, %168
  br label %247

247:                                              ; preds = %246, %163, %167, %166, %165
  br label %249

248:                                              ; preds = %35
  br label %249

249:                                              ; preds = %143, %193, %200, %248, %247, %151, %150
  ret void
}

declare dso_local %struct.DedupTable* @dedup_create(...) #1

declare dso_local i32 @syn_cookie(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dedup_is_duplicate(%struct.DedupTable*, i32, i32, i32, i32) #1

declare dso_local i32 @output_report_status(%struct.Output*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @parse_port_unreachable(i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @matches_me(%struct.Output*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
