; ModuleID = '/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_m_sekurlsa_krbtgt_keys.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_m_sekurlsa_krbtgt_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"\0A%s krbtgt: \00", align 1
@NtBuildNumber = common dso_local global i64 0, align 8
@KULL_M_WIN_BUILD_10_1607 = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%u credentials\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\09 * %s : \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_sekurlsa_krbtgt_keys(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %225

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @NtBuildNumber, align 8
  %18 = load i64, i64* @KULL_M_WIN_BUILD_10_1607, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %122

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = ptrtoint %struct.TYPE_13__* %21 to i32
  %23 = call i64 @ReadMemory(i32 %22, %struct.TYPE_13__* %9, i64 12, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %121

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 16, %30
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* @LPTR, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.TYPE_13__* @LocalAlloc(i32 %32, i64 %33)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %10, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %120

36:                                               ; preds = %25
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = ptrtoint %struct.TYPE_13__* %37 to i32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @ReadMemory(i32 %38, %struct.TYPE_13__* %39, i64 %40, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %117

43:                                               ; preds = %36
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %113, %43
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %55, label %116

55:                                               ; preds = %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PtrToLong(i32 %62)
  %64 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %63)
  %65 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @LPTR, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @PtrToUlong(i32 %73)
  %75 = call %struct.TYPE_13__* @LocalAlloc(i32 %66, i64 %74)
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %11, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %111

77:                                               ; preds = %55
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @PtrToUlong(i32 %93)
  %95 = call i64 @ReadMemory(i32 %85, %struct.TYPE_13__* %86, i64 %94, i32* null)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %77
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @PtrToUlong(i32 %105)
  %107 = call i32 @kull_m_string_dprintf_hex(%struct.TYPE_13__* %98, i64 %106, i32 0)
  br label %108

108:                                              ; preds = %97, %77
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = call i32 @LocalFree(%struct.TYPE_13__* %109)
  br label %111

111:                                              ; preds = %108, %55
  %112 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %6, align 8
  br label %48

116:                                              ; preds = %48
  br label %117

117:                                              ; preds = %116, %36
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = call i32 @LocalFree(%struct.TYPE_13__* %118)
  br label %120

120:                                              ; preds = %117, %25
  br label %121

121:                                              ; preds = %120, %20
  br label %224

122:                                              ; preds = %14
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = ptrtoint %struct.TYPE_13__* %123 to i32
  %125 = call i64 @ReadMemory(i32 %124, %struct.TYPE_13__* %7, i64 12, i32* null)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %223

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = add i64 16, %132
  store i64 %133, i64* %5, align 8
  %134 = load i32, i32* @LPTR, align 4
  %135 = load i64, i64* %5, align 8
  %136 = call %struct.TYPE_13__* @LocalAlloc(i32 %134, i64 %135)
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %8, align 8
  %137 = icmp ne %struct.TYPE_13__* %136, null
  br i1 %137, label %138, label %222

138:                                              ; preds = %127
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %140 = ptrtoint %struct.TYPE_13__* %139 to i32
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = load i64, i64* %5, align 8
  %143 = call i64 @ReadMemory(i32 %140, %struct.TYPE_13__* %141, i64 %142, i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %219

145:                                              ; preds = %138
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  store i64 0, i64* %6, align 8
  br label %150

150:                                              ; preds = %215, %145
  %151 = load i64, i64* %6, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = icmp ult i64 %151, %155
  br i1 %156, label %157, label %218

157:                                              ; preds = %150
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = load i64, i64* %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @PtrToLong(i32 %164)
  %166 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %165)
  %167 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @LPTR, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @PtrToUlong(i32 %175)
  %177 = call %struct.TYPE_13__* @LocalAlloc(i32 %168, i64 %176)
  store %struct.TYPE_13__* %177, %struct.TYPE_13__** %11, align 8
  %178 = icmp ne %struct.TYPE_13__* %177, null
  br i1 %178, label %179, label %213

179:                                              ; preds = %157
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = load i64, i64* %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = load i64, i64* %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @PtrToUlong(i32 %195)
  %197 = call i64 @ReadMemory(i32 %187, %struct.TYPE_13__* %188, i64 %196, i32* null)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %179
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = load i64, i64* %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @PtrToUlong(i32 %207)
  %209 = call i32 @kull_m_string_dprintf_hex(%struct.TYPE_13__* %200, i64 %208, i32 0)
  br label %210

210:                                              ; preds = %199, %179
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %212 = call i32 @LocalFree(%struct.TYPE_13__* %211)
  br label %213

213:                                              ; preds = %210, %157
  %214 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %215

215:                                              ; preds = %213
  %216 = load i64, i64* %6, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %6, align 8
  br label %150

218:                                              ; preds = %150
  br label %219

219:                                              ; preds = %218, %138
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %221 = call i32 @LocalFree(%struct.TYPE_13__* %220)
  br label %222

222:                                              ; preds = %219, %127
  br label %223

223:                                              ; preds = %222, %122
  br label %224

224:                                              ; preds = %223, %121
  br label %225

225:                                              ; preds = %224, %2
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @ReadMemory(i32, %struct.TYPE_13__*, i64, i32*) #1

declare dso_local %struct.TYPE_13__* @LocalAlloc(i32, i64) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_etype(i32) #1

declare dso_local i32 @PtrToLong(i32) #1

declare dso_local i64 @PtrToUlong(i32) #1

declare dso_local i32 @kull_m_string_dprintf_hex(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
