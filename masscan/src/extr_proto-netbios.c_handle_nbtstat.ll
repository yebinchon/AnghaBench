; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-netbios.c_handle_nbtstat.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-netbios.c_handle_nbtstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32*, i32*, i32, i64, i64 }
%struct.DNS_Incoming = type { i32, i32, i64, i32, i32, i32, i32* }

@Templ_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_nbtstat(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.PreprocessedInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [1 x %struct.DNS_Incoming], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %26 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %16, align 4
  %28 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %29 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %17, align 4
  %31 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %32 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 24
  %37 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %38 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  %43 = or i32 %36, %42
  %44 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %45 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %43, %49
  %51 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %52 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 0
  %57 = or i32 %50, %56
  store i32 %57, i32* %14, align 4
  %58 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %59 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 24
  %64 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %65 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %63, %69
  %71 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %72 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = or i32 %70, %76
  %78 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %79 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 0
  %84 = or i32 %77, %83
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @Templ_UDP, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i64 @syn_cookie(i32 %85, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %20, align 4
  %94 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %97 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %100 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %103 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = call i32 @proto_dns_parse(%struct.DNS_Incoming* %94, i8* %95, i64 %98, i64 %105)
  %107 = load i32, i32* %20, align 4
  %108 = and i32 %107, 65535
  %109 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %110 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 16
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %6
  store i32 1, i32* %7, align 4
  br label %252

114:                                              ; preds = %6
  %115 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %116 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, i32* %7, align 4
  br label %252

120:                                              ; preds = %114
  %121 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %122 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %252

126:                                              ; preds = %120
  %127 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %128 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 16
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  br label %252

132:                                              ; preds = %126
  %133 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %134 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %252

138:                                              ; preds = %132
  %139 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %140 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %252

144:                                              ; preds = %138
  %145 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %146 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 16
  %148 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %149 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 16
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %19, align 4
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @dns_name_skip(i8* %154, i32 %155, i32 %156)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %19, align 4
  %159 = add i32 %158, 10
  %160 = load i32, i32* %11, align 4
  %161 = icmp uge i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %144
  store i32 0, i32* %7, align 4
  br label %252

163:                                              ; preds = %144
  %164 = load i8*, i8** %10, align 8
  %165 = load i32, i32* %19, align 4
  %166 = add i32 %165, 0
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl i32 %170, 8
  %172 = load i8*, i8** %10, align 8
  %173 = load i32, i32* %19, align 4
  %174 = add i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = or i32 %171, %178
  store i32 %179, i32* %21, align 4
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* %19, align 4
  %182 = add i32 %181, 2
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = shl i32 %186, 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %19, align 4
  %190 = add i32 %189, 3
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = or i32 %187, %194
  store i32 %195, i32* %22, align 4
  %196 = load i8*, i8** %10, align 8
  %197 = load i32, i32* %19, align 4
  %198 = add i32 %197, 8
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = shl i32 %202, 8
  %204 = load i8*, i8** %10, align 8
  %205 = load i32, i32* %19, align 4
  %206 = add i32 %205, 9
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %203, %210
  store i32 %211, i32* %23, align 4
  %212 = load i8*, i8** %10, align 8
  %213 = load i32, i32* %19, align 4
  %214 = add i32 %213, 10
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  store i32 %218, i32* %24, align 4
  %219 = load i32, i32* %23, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %163
  %222 = load i32, i32* %24, align 4
  %223 = load i32, i32* %23, align 4
  %224 = sub i32 %223, 1
  %225 = icmp ugt i32 %222, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %221, %163
  store i32 0, i32* %7, align 4
  br label %252

227:                                              ; preds = %221
  %228 = load i32, i32* %21, align 4
  %229 = icmp ne i32 %228, 33
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %22, align 4
  %232 = icmp ne i32 %231, 1
  br i1 %232, label %233, label %234

233:                                              ; preds = %230, %227
  store i32 0, i32* %7, align 4
  br label %252

234:                                              ; preds = %230
  %235 = load i32, i32* %19, align 4
  %236 = add i32 %235, 10
  store i32 %236, i32* %19, align 4
  %237 = load %struct.Output*, %struct.Output** %8, align 8
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %240 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = load i32, i32* %19, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %19, align 4
  %248 = sub i32 %246, %247
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %16, align 4
  %251 = call i32 @handle_nbtstat_rr(%struct.Output* %237, i32 %238, i32 %241, i8* %245, i32 %248, i32 %249, i32 %250)
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %234, %233, %226, %162, %143, %137, %131, %125, %119, %113
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local i64 @syn_cookie(i32, i32, i32, i32, i32) #1

declare dso_local i32 @proto_dns_parse(%struct.DNS_Incoming*, i8*, i64, i64) #1

declare dso_local i32 @dns_name_skip(i8*, i32, i32) #1

declare dso_local i32 @handle_nbtstat_rr(%struct.Output*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
