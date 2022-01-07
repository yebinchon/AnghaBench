; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ccache.c_kuhl_m_kerberos_ccache_enum.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ccache.c_kuhl_m_kerberos_ccache_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i8*, i32, i32, i32, %struct.TYPE_11__, i64, i64, i32, i64, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i32] [i32 10, i32 80, i32 114, i32 105, i32 110, i32 99, i32 105, i32 112, i32 97, i32 108, i32 32, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 10, i32 10, i32 68, i32 97, i32 116, i32 97, i32 32, i32 37, i32 117, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@usXCACHECONF = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 42, i32 32, i32 73, i32 110, i32 106, i32 101, i32 99, i32 116, i32 105, i32 110, i32 103, i32 32, i32 116, i32 105, i32 99, i32 107, i32 101, i32 116, i32 32, i32 58, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 79, i32 75, i32 10, i32 0], align 4
@MIMIKATZ_KERBEROS_EXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 42, i32 32, i32 83, i32 97, i32 118, i32 101, i32 100, i32 32, i32 116, i32 111, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 37, i32 115, i32 32, i32 33, i32 0], align 4
@.str.5 = private unnamed_addr constant [22 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 119, i32 114, i32 105, i32 116, i32 101, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.6 = private unnamed_addr constant [17 x i32] [i32 10, i32 9, i32 42, i32 32, i32 37, i32 119, i32 90, i32 32, i32 101, i32 110, i32 116, i32 114, i32 121, i32 63, i32 32, i32 42, i32 0], align 4
@.str.7 = private unnamed_addr constant [47 x i32] [i32 99, i32 99, i32 97, i32 99, i32 104, i32 101, i32 32, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 33, i32 61, i32 32, i32 48, i32 120, i32 48, i32 53, i32 48, i32 52, i32 32, i32 111, i32 114, i32 32, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 33, i32 61, i32 32, i32 48, i32 120, i32 48, i32 53, i32 48, i32 51, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [21 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.9 = private unnamed_addr constant [33 x i32] [i32 65, i32 116, i32 32, i32 108, i32 101, i32 97, i32 115, i32 116, i32 32, i32 111, i32 110, i32 101, i32 32, i32 102, i32 105, i32 108, i32 101, i32 110, i32 97, i32 109, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_kerberos_ccache_enum(i32 %0, i32** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %349

21:                                               ; preds = %4
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @kull_m_file_readData(i32* %24, i64* %9, i64* %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %346

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @_byteswap_ushort(i32 %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %10, align 8
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 1284
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %13, align 4
  %40 = icmp eq i32 %39, 1283
  br i1 %40, label %41, label %341

41:                                               ; preds = %38, %27
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 1284
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @_byteswap_ushort(i32 %47)
  %49 = add i64 4, %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %44, %41
  %53 = call i32 @kuhl_m_kerberos_ccache_externalname(i64* %10, i64* %14, i32* %15)
  %54 = load i64, i64* %14, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %340

56:                                               ; preds = %52
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @kuhl_m_kerberos_ticket_displayExternalName(i8* bitcast ([14 x i32]* @.str to i8*), i64 %57, i32* %15)
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %334, %56
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %337

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = call i32 (i8*, ...) @kprintf(i8* bitcast ([10 x i32]* @.str.1 to i8*), i64 %66)
  %68 = load i32, i32* @LPTR, align 4
  %69 = call i64 @LocalAlloc(i32 %68, i32 4)
  %70 = inttoptr i64 %69 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %16, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %333

72:                                               ; preds = %65
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 14
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 13
  %77 = call i32 @kuhl_m_kerberos_ccache_externalname(i64* %10, i64* %74, i32* %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 11
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 10
  %82 = call i32 @kuhl_m_kerberos_ccache_externalname(i64* %10, i64* %79, i32* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 11
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @kuhl_m_kerberos_ticket_copyExternalName(i64 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 12
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 10
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = call i32 @kull_m_string_copyUnicodeStringBuffer(i32* %90, i32* %92)
  %94 = load i64, i64* %10, align 8
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @_byteswap_ushort(i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 9
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @_byteswap_ushort(i32 %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 8
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 1284
  br i1 %111, label %112, label %123

112:                                              ; preds = %72
  %113 = load i64, i64* %10, align 8
  %114 = inttoptr i64 %113 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @_byteswap_ushort(i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %10, align 8
  br label %134

123:                                              ; preds = %72
  %124 = load i64, i64* %10, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @_byteswap_ulong(i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load i64, i64* %10, align 8
  %133 = add i64 %132, 8
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %123, %112
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %164

140:                                              ; preds = %134
  %141 = load i32, i32* @LPTR, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @LocalAlloc(i32 %141, i32 %145)
  %147 = inttoptr i64 %146 to i8*
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  store i8* %147, i8** %150, align 8
  %151 = icmp ne i8* %147, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %140
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 7
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @RtlCopyMemory(i8* %156, i64 %157, i32 %161)
  br label %163

163:                                              ; preds = %152, %140
  br label %164

164:                                              ; preds = %163, %134
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, 8
  %171 = load i64, i64* %10, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %10, align 8
  %173 = load i64, i64* %10, align 8
  %174 = inttoptr i64 %173 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @_byteswap_ulong(i32 %175)
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 6
  %179 = call i32 @kuhl_m_kerberos_ccache_UnixTimeToFileTime(i8* %176, i32* %178)
  %180 = load i64, i64* %10, align 8
  %181 = add i64 %180, 8
  store i64 %181, i64* %10, align 8
  %182 = load i64, i64* %10, align 8
  %183 = inttoptr i64 %182 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @_byteswap_ulong(i32 %184)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 5
  %188 = call i32 @kuhl_m_kerberos_ccache_UnixTimeToFileTime(i8* %185, i32* %187)
  %189 = load i64, i64* %10, align 8
  %190 = add i64 %189, 8
  store i64 %190, i64* %10, align 8
  %191 = load i64, i64* %10, align 8
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @_byteswap_ulong(i32 %193)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = call i32 @kuhl_m_kerberos_ccache_UnixTimeToFileTime(i8* %194, i32* %196)
  %198 = load i64, i64* %10, align 8
  %199 = add i64 %198, 12
  store i64 %199, i64* %10, align 8
  %200 = load i64, i64* %10, align 8
  %201 = inttoptr i64 %200 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @_byteswap_ulong(i32 %202)
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  %206 = load i64, i64* %10, align 8
  %207 = add i64 %206, 8
  store i64 %207, i64* %10, align 8
  %208 = call i32 @kuhl_m_kerberos_ccache_skip_struct_with_buffer(i64* %10)
  %209 = call i32 @kuhl_m_kerberos_ccache_skip_struct_with_buffer(i64* %10)
  %210 = load i64, i64* %10, align 8
  %211 = inttoptr i64 %210 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @_byteswap_ulong(i32 %212)
  %214 = ptrtoint i8* %213 to i32
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 8
  %218 = load i64, i64* %10, align 8
  %219 = add i64 %218, 8
  store i64 %219, i64* %10, align 8
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  store i32 2, i32* %221, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %251

227:                                              ; preds = %164
  %228 = load i32, i32* @LPTR, align 4
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i64 @LocalAlloc(i32 %228, i32 %232)
  %234 = inttoptr i64 %233 to i8*
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  store i8* %234, i8** %237, align 8
  %238 = icmp ne i8* %234, null
  br i1 %238, label %239, label %250

239:                                              ; preds = %227
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load i64, i64* %10, align 8
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @RtlCopyMemory(i8* %243, i64 %244, i32 %248)
  br label %250

250:                                              ; preds = %239, %227
  br label %251

251:                                              ; preds = %250, %164
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %10, align 8
  %258 = add nsw i64 %257, %256
  store i64 %258, i64* %10, align 8
  %259 = call i32 @kuhl_m_kerberos_ccache_skip_buffer(i64* %10)
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load i32, i32* @TRUE, align 4
  %263 = call i32 @RtlEqualUnicodeString(i32* @usXCACHECONF, i32* %261, i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %328, label %265

265:                                              ; preds = %251
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %267 = load i32, i32* @TRUE, align 4
  %268 = load i32, i32* @FALSE, align 4
  %269 = call i32 @kuhl_m_kerberos_ticket_display(%struct.TYPE_13__* %266, i32 %267, i32 %268)
  %270 = load i64, i64* %8, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %265
  %273 = load i64, i64* %7, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %327

275:                                              ; preds = %272, %265
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %277 = load i32, i32* @TRUE, align 4
  %278 = call %struct.TYPE_14__* @kuhl_m_kerberos_ticket_createAppKrbCred(%struct.TYPE_13__* %276, i32 %277)
  store %struct.TYPE_14__* %278, %struct.TYPE_14__** %17, align 8
  %279 = icmp ne %struct.TYPE_14__* %278, null
  br i1 %279, label %280, label %326

280:                                              ; preds = %275
  %281 = load i64, i64* %7, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %297

283:                                              ; preds = %280
  %284 = call i32 (i8*, ...) @kprintf(i8* bitcast ([27 x i32]* @.str.2 to i8*))
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @kuhl_m_kerberos_ptt_data(i32 %287, i32 %290)
  %292 = call i64 @NT_SUCCESS(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %283
  %295 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.3 to i8*))
  br label %296

296:                                              ; preds = %294, %283
  br label %323

297:                                              ; preds = %280
  %298 = load i64, i64* %12, align 8
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %300 = load i32, i32* @MIMIKATZ_KERBEROS_EXT, align 4
  %301 = call i32* @kuhl_m_kerberos_ccache_generateFileName(i64 %298, %struct.TYPE_13__* %299, i32 %300)
  store i32* %301, i32** %18, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %322

303:                                              ; preds = %297
  %304 = load i32*, i32** %18, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i64 @kull_m_file_writeData(i32* %304, i32 %307, i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %303
  %314 = load i32*, i32** %18, align 8
  %315 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.4 to i8*), i32* %314)
  br label %318

316:                                              ; preds = %303
  %317 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.5 to i8*))
  br label %318

318:                                              ; preds = %316, %313
  %319 = load i32*, i32** %18, align 8
  %320 = ptrtoint i32* %319 to i64
  %321 = call i32 @LocalFree(i64 %320)
  br label %322

322:                                              ; preds = %318, %297
  br label %323

323:                                              ; preds = %322, %296
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %325 = call i32 @ber_bvfree(%struct.TYPE_14__* %324)
  br label %326

326:                                              ; preds = %323, %275
  br label %327

327:                                              ; preds = %326, %272
  br label %330

328:                                              ; preds = %251
  %329 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.6 to i8*), i32* @usXCACHECONF)
  br label %330

330:                                              ; preds = %328, %327
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %332 = call i32 @kuhl_m_kerberos_ticket_freeTicket(%struct.TYPE_13__* %331)
  br label %333

333:                                              ; preds = %330, %65
  br label %334

334:                                              ; preds = %333
  %335 = load i64, i64* %12, align 8
  %336 = add nsw i64 %335, 1
  store i64 %336, i64* %12, align 8
  br label %59

337:                                              ; preds = %59
  %338 = load i64, i64* %14, align 8
  %339 = call i32 @kuhl_m_kerberos_ticket_freeExternalName(i64 %338)
  br label %340

340:                                              ; preds = %337, %52
  br label %343

341:                                              ; preds = %38
  %342 = call i32 @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.7 to i8*))
  br label %343

343:                                              ; preds = %341, %340
  %344 = load i64, i64* %9, align 8
  %345 = call i32 @LocalFree(i64 %344)
  br label %348

346:                                              ; preds = %21
  %347 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.8 to i8*))
  br label %348

348:                                              ; preds = %346, %343
  br label %351

349:                                              ; preds = %4
  %350 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.9 to i8*))
  br label %351

351:                                              ; preds = %349, %348
  %352 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %352
}

declare dso_local i64 @kull_m_file_readData(i32*, i64*, i64*) #1

declare dso_local i64 @_byteswap_ushort(i32) #1

declare dso_local i32 @kuhl_m_kerberos_ccache_externalname(i64*, i64*, i32*) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_displayExternalName(i8*, i64, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_copyExternalName(i64) #1

declare dso_local i32 @kull_m_string_copyUnicodeStringBuffer(i32*, i32*) #1

declare dso_local i8* @_byteswap_ulong(i32) #1

declare dso_local i32 @RtlCopyMemory(i8*, i64, i32) #1

declare dso_local i32 @kuhl_m_kerberos_ccache_UnixTimeToFileTime(i8*, i32*) #1

declare dso_local i32 @kuhl_m_kerberos_ccache_skip_struct_with_buffer(i64*) #1

declare dso_local i32 @kuhl_m_kerberos_ccache_skip_buffer(i64*) #1

declare dso_local i32 @RtlEqualUnicodeString(i32*, i32*, i32) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_display(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @kuhl_m_kerberos_ticket_createAppKrbCred(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kuhl_m_kerberos_ptt_data(i32, i32) #1

declare dso_local i32* @kuhl_m_kerberos_ccache_generateFileName(i64, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @kull_m_file_writeData(i32*, i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i32 @ber_bvfree(%struct.TYPE_14__*) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_freeTicket(%struct.TYPE_13__*) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_freeExternalName(i64) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
