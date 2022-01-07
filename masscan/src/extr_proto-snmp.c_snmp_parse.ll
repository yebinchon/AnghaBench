; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_parse.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }
%struct.SNMP = type { i64, i64, i8*, i32, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.BannerOutput*, i32*)* @snmp_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_parse(i8* %0, i64 %1, %struct.BannerOutput* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.BannerOutput*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x %struct.SNMP], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.BannerOutput* %2, %struct.BannerOutput** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %19 = bitcast [1 x %struct.SNMP]* %11 to %struct.SNMP**
  %20 = call i32 @memset(%struct.SNMP** %19, i32 0, i32 56)
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @asn1_tag(i8* %21, i64 %22, i64* %9)
  %24 = icmp ne i32 %23, 48
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %220

26:                                               ; preds = %4
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @asn1_length(i8* %27, i64 %28, i64* %9)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %31, %32
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %36, %37
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %35, %26
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i8* @asn1_integer(i8* %40, i64 %41, i64* %9)
  %43 = ptrtoint i8* %42 to i64
  %44 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %45 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 16
  %46 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %47 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 16
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %220

51:                                               ; preds = %39
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @asn1_tag(i8* %52, i64 %53, i64* %9)
  %55 = icmp ne i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %220

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @asn1_length(i8* %58, i64 %59, i64* %9)
  %61 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %62 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 16
  %68 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %69 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %9, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @asn1_tag(i8* %73, i64 %74, i64* %9)
  %76 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %77 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %79 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 160
  br i1 %81, label %87, label %82

82:                                               ; preds = %57
  %83 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %84 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 165, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %57
  br label %220

88:                                               ; preds = %82
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @asn1_length(i8* %89, i64 %90, i64* %9)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %93, %94
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %98, %99
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %97, %88
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i8* @asn1_integer(i8* %102, i64 %103, i64* %9)
  %105 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %106 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 16
  %107 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %108 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %107, i32 0, i32 6
  %109 = load i8*, i8** %108, align 16
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i8* @asn1_integer(i8* %112, i64 %113, i64* %9)
  %115 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %116 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i8* @asn1_integer(i8* %117, i64 %118, i64* %9)
  %120 = getelementptr inbounds [1 x %struct.SNMP], [1 x %struct.SNMP]* %11, i64 0, i64 0
  %121 = getelementptr inbounds %struct.SNMP, %struct.SNMP* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 16
  %122 = load i8*, i8** %5, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @asn1_tag(i8* %122, i64 %123, i64* %9)
  %125 = icmp ne i32 %124, 48
  br i1 %125, label %126, label %127

126:                                              ; preds = %101
  br label %220

127:                                              ; preds = %101
  %128 = load i8*, i8** %5, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i64 @asn1_length(i8* %128, i64 %129, i64* %9)
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %9, align 8
  %134 = add nsw i64 %132, %133
  %135 = icmp sgt i64 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %9, align 8
  %139 = add nsw i64 %137, %138
  store i64 %139, i64* %6, align 8
  br label %140

140:                                              ; preds = %136, %127
  br label %141

141:                                              ; preds = %219, %210, %140
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* %6, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %220

145:                                              ; preds = %141
  %146 = load i8*, i8** %5, align 8
  %147 = load i64, i64* %9, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %9, align 8
  %149 = getelementptr inbounds i8, i8* %146, i64 %147
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp ne i32 %151, 48
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %220

154:                                              ; preds = %145
  %155 = load i8*, i8** %5, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call i64 @asn1_length(i8* %155, i64 %156, i64* %9)
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* %12, align 8
  %159 = icmp eq i64 %158, 4294967295
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %220

161:                                              ; preds = %154
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %12, align 8
  %164 = add nsw i64 %162, %163
  store i64 %164, i64* %13, align 8
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %6, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %220

169:                                              ; preds = %161
  %170 = load i8*, i8** %5, align 8
  %171 = load i64, i64* %6, align 8
  %172 = call i32 @asn1_tag(i8* %170, i64 %171, i64* %9)
  %173 = icmp ne i32 %172, 6
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %220

175:                                              ; preds = %169
  %176 = load i8*, i8** %5, align 8
  %177 = load i64, i64* %6, align 8
  %178 = call i64 @asn1_length(i8* %176, i64 %177, i64* %9)
  store i64 %178, i64* %14, align 8
  %179 = load i8*, i8** %5, align 8
  %180 = load i64, i64* %9, align 8
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %15, align 8
  %182 = load i64, i64* %14, align 8
  %183 = load i64, i64* %9, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %6, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %175
  br label %220

189:                                              ; preds = %175
  %190 = load i8*, i8** %5, align 8
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @asn1_tag(i8* %190, i64 %191, i64* %9)
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %16, align 8
  %194 = load i8*, i8** %5, align 8
  %195 = load i64, i64* %6, align 8
  %196 = call i64 @asn1_length(i8* %194, i64 %195, i64* %9)
  store i64 %196, i64* %17, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = load i64, i64* %9, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %18, align 8
  %200 = load i64, i64* %17, align 8
  %201 = load i64, i64* %9, align 8
  %202 = add nsw i64 %201, %200
  store i64 %202, i64* %9, align 8
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* %6, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %189
  br label %220

207:                                              ; preds = %189
  %208 = load i64, i64* %16, align 8
  %209 = icmp eq i64 %208, 5
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %141

211:                                              ; preds = %207
  %212 = load i8*, i8** %15, align 8
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* %16, align 8
  %215 = load i8*, i8** %18, align 8
  %216 = load i64, i64* %17, align 8
  %217 = load %struct.BannerOutput*, %struct.BannerOutput** %7, align 8
  %218 = call i32 @snmp_banner(i8* %212, i64 %213, i64 %214, i8* %215, i64 %216, %struct.BannerOutput* %217)
  br label %219

219:                                              ; preds = %211
  br label %141

220:                                              ; preds = %25, %50, %56, %87, %126, %168, %174, %188, %206, %160, %153, %141
  ret void
}

declare dso_local i32 @memset(%struct.SNMP**, i32, i32) #1

declare dso_local i32 @asn1_tag(i8*, i64, i64*) #1

declare dso_local i64 @asn1_length(i8*, i64, i64*) #1

declare dso_local i8* @asn1_integer(i8*, i64, i64*) #1

declare dso_local i32 @snmp_banner(i8*, i64, i64, i8*, i64, %struct.BannerOutput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
