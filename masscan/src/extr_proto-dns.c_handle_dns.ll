; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_handle_dns.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-dns.c_handle_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { i32 }
%struct.PreprocessedInfo = type { i32, i32, i32*, i32*, i32, i64, i64 }
%struct.DNS_Incoming = type { i32, i32, i32, i32* }

@Templ_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"1:FORMERR\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"2:SERVFAIL\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"3:NXDOMAIN\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"4:NOTIMP\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"5:REFUSED\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"6:YXDOMAIN\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"7:XRRSET\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"8:NOTAUTH\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"9:NOTZONE\00", align 1
@PROTO_DNS_VERSIONBIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_dns(%struct.Output* %0, i32 %1, i8* %2, i32 %3, %struct.PreprocessedInfo* %4, i32 %5) #0 {
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
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.Output* %0, %struct.Output** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.PreprocessedInfo* %4, %struct.PreprocessedInfo** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %27 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %16, align 4
  %29 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %30 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  store i8* null, i8** %21, align 8
  %32 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %33 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 24
  %38 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %39 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = or i32 %37, %43
  %45 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %46 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %44, %50
  %52 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %53 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 0
  %58 = or i32 %51, %57
  store i32 %58, i32* %14, align 4
  %59 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %60 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 24
  %65 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %66 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 16
  %71 = or i32 %64, %70
  %72 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %73 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = or i32 %71, %77
  %79 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %80 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 0
  %85 = or i32 %78, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @Templ_UDP, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @syn_cookie(i32 %86, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %20, align 4
  %95 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %96 = load i8*, i8** %10, align 8
  %97 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %98 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %101 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %104 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = call i32 @proto_dns_parse(%struct.DNS_Incoming* %95, i8* %96, i64 %99, i64 %106)
  %108 = load i32, i32* %20, align 4
  %109 = and i32 %108, 65535
  %110 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %111 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 16
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %6
  store i32 1, i32* %7, align 4
  br label %255

115:                                              ; preds = %6
  %116 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %117 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %7, align 4
  br label %255

121:                                              ; preds = %115
  %122 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %123 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %135 [
    i32 0, label %125
    i32 1, label %126
    i32 2, label %127
    i32 3, label %128
    i32 4, label %129
    i32 5, label %130
    i32 6, label %131
    i32 7, label %132
    i32 8, label %133
    i32 9, label %134
  ]

125:                                              ; preds = %121
  store i8* null, i8** %21, align 8
  br label %135

126:                                              ; preds = %121
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %135

127:                                              ; preds = %121
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %135

128:                                              ; preds = %121
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %135

129:                                              ; preds = %121
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %135

130:                                              ; preds = %121
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %135

131:                                              ; preds = %121
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %21, align 8
  br label %135

132:                                              ; preds = %121
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %21, align 8
  br label %135

133:                                              ; preds = %121
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %21, align 8
  br label %135

134:                                              ; preds = %121
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  br label %135

135:                                              ; preds = %121, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125
  %136 = load i8*, i8** %21, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %152

138:                                              ; preds = %135
  %139 = load %struct.Output*, %struct.Output** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* @PROTO_DNS_VERSIONBIND, align 4
  %144 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %145 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %21, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = call i64 @strlen(i8* %148)
  %150 = trunc i64 %149 to i32
  %151 = call i32 @output_report_banner(%struct.Output* %139, i32 %140, i32 %141, i32 17, i32 %142, i32 %143, i32 %146, i8* %147, i32 %150)
  store i32 0, i32* %7, align 4
  br label %255

152:                                              ; preds = %135
  %153 = getelementptr inbounds [1 x %struct.DNS_Incoming], [1 x %struct.DNS_Incoming]* %18, i64 0, i64 0
  %154 = getelementptr inbounds %struct.DNS_Incoming, %struct.DNS_Incoming* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 16
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %19, align 4
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @dns_name_skip(i8* %158, i32 %159, i32 %160)
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %19, align 4
  %163 = add i32 %162, 10
  %164 = load i32, i32* %11, align 4
  %165 = icmp uge i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %152
  store i32 0, i32* %7, align 4
  br label %255

167:                                              ; preds = %152
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %19, align 4
  %170 = add i32 %169, 0
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = shl i32 %174, 8
  %176 = load i8*, i8** %10, align 8
  %177 = load i32, i32* %19, align 4
  %178 = add i32 %177, 1
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = or i32 %175, %182
  store i32 %183, i32* %22, align 4
  %184 = load i8*, i8** %10, align 8
  %185 = load i32, i32* %19, align 4
  %186 = add i32 %185, 2
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = shl i32 %190, 8
  %192 = load i8*, i8** %10, align 8
  %193 = load i32, i32* %19, align 4
  %194 = add i32 %193, 3
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = or i32 %191, %198
  store i32 %199, i32* %23, align 4
  %200 = load i8*, i8** %10, align 8
  %201 = load i32, i32* %19, align 4
  %202 = add i32 %201, 8
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl i32 %206, 8
  %208 = load i8*, i8** %10, align 8
  %209 = load i32, i32* %19, align 4
  %210 = add i32 %209, 9
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = or i32 %207, %214
  store i32 %215, i32* %24, align 4
  %216 = load i8*, i8** %10, align 8
  %217 = load i32, i32* %19, align 4
  %218 = add i32 %217, 10
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %216, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  store i32 %222, i32* %25, align 4
  %223 = load i32, i32* %24, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %167
  %226 = load i32, i32* %25, align 4
  %227 = load i32, i32* %24, align 4
  %228 = sub i32 %227, 1
  %229 = icmp ugt i32 %226, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %225, %167
  store i32 0, i32* %7, align 4
  br label %255

231:                                              ; preds = %225
  %232 = load i32, i32* %22, align 4
  %233 = icmp ne i32 %232, 16
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* %23, align 4
  %236 = icmp ne i32 %235, 3
  br i1 %236, label %237, label %238

237:                                              ; preds = %234, %231
  store i32 0, i32* %7, align 4
  br label %255

238:                                              ; preds = %234
  %239 = load i32, i32* %19, align 4
  %240 = add i32 %239, 11
  store i32 %240, i32* %19, align 4
  %241 = load %struct.Output*, %struct.Output** %8, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* @PROTO_DNS_VERSIONBIND, align 4
  %246 = load %struct.PreprocessedInfo*, %struct.PreprocessedInfo** %12, align 8
  %247 = getelementptr inbounds %struct.PreprocessedInfo, %struct.PreprocessedInfo* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = load i32, i32* %19, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i32, i32* %25, align 4
  %254 = call i32 @output_report_banner(%struct.Output* %241, i32 %242, i32 %243, i32 17, i32 %244, i32 %245, i32 %248, i8* %252, i32 %253)
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %238, %237, %230, %166, %138, %120, %114
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

declare dso_local i64 @syn_cookie(i32, i32, i32, i32, i32) #1

declare dso_local i32 @proto_dns_parse(%struct.DNS_Incoming*, i8*, i64, i64) #1

declare dso_local i32 @output_report_banner(%struct.Output*, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dns_name_skip(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
