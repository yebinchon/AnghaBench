; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/extr_registry.c_do_reg_operation.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/extr_registry.c_do_reg_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLG_ADDREG_DELVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FLG_ADDREG_KEYONLY = common dso_local global i32 0, align 4
@FLG_ADDREG_TYPE_MASK = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@REG_MULTI_SZ = common dso_local global i32 0, align 4
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@REG_NONE = common dso_local global i32 0, align 4
@FLG_ADDREG_BINVALUETYPE = common dso_local global i32 0, align 4
@ProcessHeap = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FLG_ADDREG_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"append_multi_sz_value '%S' commented out, WHY??\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"setting dword %wZ to %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"setting value %wZ to %S\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"setting binary data %wZ len %lu\0A\00", align 1
@FLG_ADDREG_NOCLOBBER = common dso_local global i32 0, align 4
@FLG_ADDREG_OVERWRITEONLY = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@hkey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32)* @do_reg_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_reg_operation(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FLG_ADDREG_DELVAL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %5, align 4
  br label %221

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @FLG_ADDREG_KEYONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %5, align 4
  br label %221

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FLG_ADDREG_TYPE_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %45 [
    i32 128, label %33
    i32 130, label %35
    i32 131, label %37
    i32 133, label %39
    i32 132, label %41
    i32 129, label %43
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @REG_SZ, align 4
  store i32 %34, i32* %11, align 4
  br label %48

35:                                               ; preds = %29
  %36 = load i32, i32* @REG_MULTI_SZ, align 4
  store i32 %36, i32* %11, align 4
  br label %48

37:                                               ; preds = %29
  %38 = load i32, i32* @REG_EXPAND_SZ, align 4
  store i32 %38, i32* %11, align 4
  br label %48

39:                                               ; preds = %29
  %40 = load i32, i32* @REG_BINARY, align 4
  store i32 %40, i32* %11, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load i32, i32* @REG_DWORD, align 4
  store i32 %42, i32* %11, align 4
  br label %48

43:                                               ; preds = %29
  %44 = load i32, i32* @REG_NONE, align 4
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %43, %41, %39, %37, %35, %33
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @FLG_ADDREG_BINVALUETYPE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @REG_DWORD, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %183

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @SpInfGetFieldCount(i32 %58)
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %183

61:                                               ; preds = %57, %48
  store i8* null, i8** %13, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @REG_MULTI_SZ, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @SpInfGetMultiSzField(i32 %66, i32 5, i8* null, i32 0, i32* %12)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load i32, i32* @ProcessHeap, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = call i64 @RtlAllocateHeap(i32 %74, i32 0, i32 %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %5, align 4
  br label %221

85:                                               ; preds = %73
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @SpInfGetMultiSzField(i32 %86, i32 5, i8* %87, i32 %88, i32* null)
  br label %90

90:                                               ; preds = %85, %70
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @FLG_ADDREG_APPEND, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i8*, i8** %13, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %5, align 4
  br label %221

100:                                              ; preds = %95
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @ProcessHeap, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = call i32 @RtlFreeHeap(i32 %103, i32 0, i8* %104)
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %5, align 4
  br label %221

107:                                              ; preds = %90
  br label %134

108:                                              ; preds = %61
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @SpInfGetStringField(i32 %109, i32 5, i8* null, i32 0, i32* %12)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load i32, i32* @ProcessHeap, align 4
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 1
  %121 = trunc i64 %120 to i32
  %122 = call i64 @RtlAllocateHeap(i32 %117, i32 0, i32 %121)
  %123 = inttoptr i64 %122 to i8*
  store i8* %123, i8** %13, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %5, align 4
  br label %221

128:                                              ; preds = %116
  %129 = load i32, i32* %8, align 4
  %130 = load i8*, i8** %13, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @SpInfGetStringField(i32 %129, i32 5, i8* %130, i32 %131, i32* null)
  br label %133

133:                                              ; preds = %128, %113
  br label %134

134:                                              ; preds = %133, %107
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @REG_DWORD, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %134
  %139 = load i8*, i8** %13, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i8*, i8** %13, align 8
  %143 = call i32 @wcstoul(i8* %142, i32* null, i32 0)
  br label %145

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %141
  %146 = phi i32 [ %143, %141 ], [ 0, %144 ]
  store i32 %146, i32* %14, align 4
  %147 = load i64, i64* %7, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %147, i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = load i64, i64* %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = ptrtoint i32* %14 to i32
  %154 = call i32 @NtSetValueKey(i32 %150, i64 %151, i32 0, i32 %152, i32 %153, i32 4)
  br label %179

155:                                              ; preds = %134
  %156 = load i64, i64* %7, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %156, i8* %157)
  %159 = load i8*, i8** %13, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load i32, i32* %6, align 4
  %163 = load i64, i64* %7, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i8*, i8** %13, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 1
  %170 = trunc i64 %169 to i32
  %171 = call i32 @NtSetValueKey(i32 %162, i64 %163, i32 0, i32 %164, i32 %166, i32 %170)
  br label %178

172:                                              ; preds = %155
  %173 = load i32, i32* %6, align 4
  %174 = load i64, i64* %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = ptrtoint i8* %10 to i32
  %177 = call i32 @NtSetValueKey(i32 %173, i64 %174, i32 0, i32 %175, i32 %176, i32 1)
  br label %178

178:                                              ; preds = %172, %161
  br label %179

179:                                              ; preds = %178, %145
  %180 = load i32, i32* @ProcessHeap, align 4
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 @RtlFreeHeap(i32 %180, i32 0, i8* %181)
  br label %219

183:                                              ; preds = %57, %53
  store i8* null, i8** %15, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @SpInfGetBinaryField(i32 %184, i32 5, i8* null, i32 0, i32* %12)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %183
  store i32 0, i32* %12, align 4
  br label %188

188:                                              ; preds = %187, %183
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32, i32* @ProcessHeap, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @RtlAllocateHeap(i32 %192, i32 0, i32 %193)
  %195 = inttoptr i64 %194 to i8*
  store i8* %195, i8** %15, align 8
  %196 = load i8*, i8** %15, align 8
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = load i32, i32* @FALSE, align 4
  store i32 %199, i32* %5, align 4
  br label %221

200:                                              ; preds = %191
  %201 = load i64, i64* %7, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %201, i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = load i8*, i8** %15, align 8
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @SpInfGetBinaryField(i32 %204, i32 5, i8* %205, i32 %206, i32* null)
  br label %208

208:                                              ; preds = %200, %188
  %209 = load i32, i32* %6, align 4
  %210 = load i64, i64* %7, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load i8*, i8** %15, align 8
  %213 = ptrtoint i8* %212 to i32
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @NtSetValueKey(i32 %209, i64 %210, i32 0, i32 %211, i32 %213, i32 %214)
  %216 = load i32, i32* @ProcessHeap, align 4
  %217 = load i8*, i8** %15, align 8
  %218 = call i32 @RtlFreeHeap(i32 %216, i32 0, i8* %217)
  br label %219

219:                                              ; preds = %208, %179
  %220 = load i32, i32* @TRUE, align 4
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %219, %198, %126, %100, %98, %83, %27, %20
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @SpInfGetFieldCount(i32) #1

declare dso_local i32 @SpInfGetMultiSzField(i32, i32, i8*, i32, i32*) #1

declare dso_local i64 @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i8*) #1

declare dso_local i32 @SpInfGetStringField(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @wcstoul(i8*, i32*, i32) #1

declare dso_local i32 @DPRINT(i8*, i64, ...) #1

declare dso_local i32 @NtSetValueKey(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SpInfGetBinaryField(i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
