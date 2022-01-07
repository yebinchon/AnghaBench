; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_encode.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i32] [i32 99, i32 108, i32 101, i32 97, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 109, i32 117, i32 108, i32 116, i32 105, i32 112, i32 108, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [10 x i32] [i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [6 x i32] [i32 118, i32 97, i32 108, i32 117, i32 101, i32 0], align 4
@.str.5 = private unnamed_addr constant [19 x i32] [i32 114, i32 101, i32 112, i32 108, i32 79, i32 114, i32 105, i32 103, i32 105, i32 110, i32 97, i32 116, i32 105, i32 110, i32 103, i32 85, i32 105, i32 100, i32 0], align 4
@REPLICATION_UID_SET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i32] [i32 117, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 112, i32 97, i32 114, i32 115, i32 101, i32 32, i32 114, i32 101, i32 112, i32 108, i32 79, i32 114, i32 105, i32 103, i32 105, i32 110, i32 97, i32 116, i32 105, i32 110, i32 103, i32 85, i32 105, i32 100, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [19 x i32] [i32 114, i32 101, i32 112, i32 108, i32 79, i32 114, i32 105, i32 103, i32 105, i32 110, i32 97, i32 116, i32 105, i32 110, i32 103, i32 85, i32 115, i32 110, i32 0], align 4
@REPLICATION_USN_SET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i32] [i32 114, i32 101, i32 112, i32 108, i32 79, i32 114, i32 105, i32 103, i32 105, i32 110, i32 97, i32 116, i32 105, i32 110, i32 103, i32 84, i32 105, i32 109, i32 101, i32 0], align 4
@REPLICATION_TIME_SET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i32] [i32 117, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 112, i32 97, i32 114, i32 115, i32 101, i32 32, i32 114, i32 101, i32 112, i32 108, i32 79, i32 114, i32 105, i32 103, i32 105, i32 110, i32 97, i32 116, i32 105, i32 110, i32 103, i32 84, i32 105, i32 109, i32 101, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [8 x i32] [i32 100, i32 121, i32 110, i32 97, i32 109, i32 105, i32 99, i32 0], align 4
@OBJECT_DYNAMIC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i32] [i32 117, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 115, i32 101, i32 116, i32 32, i32 118, i32 97, i32 108, i32 117, i32 101, i32 10, i32 0], align 4
@.str.12 = private unnamed_addr constant [25 x i32] [i32 117, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 97, i32 100, i32 100, i32 32, i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 10, i32 0], align 4
@.str.13 = private unnamed_addr constant [22 x i32] [i32 117, i32 110, i32 97, i32 98, i32 108, i32 101, i32 32, i32 116, i32 111, i32 32, i32 97, i32 100, i32 100, i32 32, i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [31 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 111, i32 114, i32 32, i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [15 x i32] [i32 118, i32 97, i32 108, i32 117, i32 101, i32 32, i32 109, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@.str.16 = private unnamed_addr constant [18 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 110, i32 111, i32 116, i32 32, i32 102, i32 111, i32 117, i32 110, i32 100, i32 10, i32 0], align 4
@.str.17 = private unnamed_addr constant [19 x i32] [i32 97, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 32, i32 109, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@.str.18 = private unnamed_addr constant [16 x i32] [i32 111, i32 98, i32 106, i32 101, i32 99, i32 116, i32 32, i32 109, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_encode(i32 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32**, i32*** %6, align 8
  %21 = call i64 @kull_m_string_args_byName(i32 %19, i32** %20, i8* bitcast ([6 x i32]* @.str to i8*), i32** null, i32* null)
  store i64 %21, i64* %16, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32**, i32*** %6, align 8
  %24 = call i64 @kull_m_string_args_byName(i32 %22, i32** %23, i8* bitcast ([9 x i32]* @.str.1 to i8*), i32** null, i32* null)
  store i64 %24, i64* %17, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32**, i32*** %6, align 8
  %27 = call i64 @kull_m_string_args_byName(i32 %25, i32** %26, i8* bitcast ([7 x i32]* @.str.2 to i8*), i32** %7, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %171

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32**, i32*** %6, align 8
  %32 = call i64 @kull_m_string_args_byName(i32 %30, i32** %31, i8* bitcast ([10 x i32]* @.str.3 to i8*), i32** %8, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %156

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32**, i32*** %6, align 8
  %37 = call i64 @kull_m_string_args_byName(i32 %35, i32** %36, i8* bitcast ([6 x i32]* @.str.4 to i8*), i32** %9, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %140

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @kuhl_m_lsadump_dcshadow_encode_add_object_if_needed(i32 %40, i32* %41, %struct.TYPE_10__** %14)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %137

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %48 = call i64 @kuhl_m_lsadump_dcshadow_encode_add_attribute_if_needed(i32 %45, i32* %46, %struct.TYPE_10__* %47, %struct.TYPE_9__** %15)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %134

50:                                               ; preds = %44
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i64 @kuhl_m_lsadump_dcshadow_encode_add_value(i32* %51, %struct.TYPE_9__* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %131

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load i32**, i32*** %6, align 8
  %59 = call i64 @kull_m_string_args_byName(i32 %57, i32** %58, i8* bitcast ([19 x i32]* @.str.5 to i8*), i32** %11, i32* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @RtlInitUnicodeString(i32* %18, i32* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = call i32 @RtlGUIDFromString(i32* %18, i32* %66)
  %68 = call i64 @NT_SUCCESS(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i32, i32* @REPLICATION_UID_SET, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %79

77:                                               ; preds = %61
  %78 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.6 to i8*))
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79, %56
  %81 = load i32, i32* %5, align 4
  %82 = load i32**, i32*** %6, align 8
  %83 = call i64 @kull_m_string_args_byName(i32 %81, i32** %82, i8* bitcast ([19 x i32]* @.str.7 to i8*), i32** %12, i32* null)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @wcstoul(i32* %86, i32* null, i32 0)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @REPLICATION_USN_SET, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %85, %80
  %98 = load i32, i32* %5, align 4
  %99 = load i32**, i32*** %6, align 8
  %100 = call i64 @kull_m_string_args_byName(i32 %98, i32** %99, i8* bitcast ([20 x i32]* @.str.8 to i8*), i32** %13, i32* null)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load i32*, i32** %13, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = call i64 @kull_m_string_stringToFileTime(i32* %103, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load i32, i32* @REPLICATION_TIME_SET, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  br label %118

116:                                              ; preds = %102
  %117 = call i32 @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.9 to i8*))
  br label %118

118:                                              ; preds = %116, %109
  br label %119

119:                                              ; preds = %118, %97
  %120 = load i32, i32* %5, align 4
  %121 = load i32**, i32*** %6, align 8
  %122 = call i64 @kull_m_string_args_byName(i32 %120, i32** %121, i8* bitcast ([8 x i32]* @.str.10 to i8*), i32** null, i32* null)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @OBJECT_DYNAMIC, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119
  br label %133

131:                                              ; preds = %50
  %132 = call i32 @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str.11 to i8*))
  br label %133

133:                                              ; preds = %131, %130
  br label %136

134:                                              ; preds = %44
  %135 = call i32 @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.12 to i8*))
  br label %136

136:                                              ; preds = %134, %133
  br label %139

137:                                              ; preds = %39
  %138 = call i32 @PRINT_ERROR(i8* bitcast ([22 x i32]* @.str.13 to i8*))
  br label %139

139:                                              ; preds = %137, %136
  br label %155

140:                                              ; preds = %34
  %141 = load i64, i64* %16, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i32, i32* %4, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @kuhl_m_lsadump_dcshadow_remove_attribute(i32 %144, i32* %145, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = call i32 @PRINT_ERROR(i8* bitcast ([31 x i32]* @.str.14 to i8*))
  br label %151

151:                                              ; preds = %149, %143
  br label %154

152:                                              ; preds = %140
  %153 = call i32 @PRINT_ERROR(i8* bitcast ([15 x i32]* @.str.15 to i8*))
  br label %154

154:                                              ; preds = %152, %151
  br label %155

155:                                              ; preds = %154, %139
  br label %170

156:                                              ; preds = %29
  %157 = load i64, i64* %16, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %156
  %160 = load i32, i32* %4, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @kuhl_m_lsadump_dcshadow_remove_object(i32 %160, i32* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  %165 = call i32 @PRINT_ERROR(i8* bitcast ([18 x i32]* @.str.16 to i8*))
  br label %166

166:                                              ; preds = %164, %159
  br label %169

167:                                              ; preds = %156
  %168 = call i32 @PRINT_ERROR(i8* bitcast ([19 x i32]* @.str.17 to i8*))
  br label %169

169:                                              ; preds = %167, %166
  br label %170

170:                                              ; preds = %169, %155
  br label %180

171:                                              ; preds = %3
  %172 = load i64, i64* %16, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @kuhl_m_lsadump_dcshadow_clean_push_request(i32 %175)
  br label %179

177:                                              ; preds = %171
  %178 = call i32 @PRINT_ERROR(i8* bitcast ([16 x i32]* @.str.18 to i8*))
  br label %179

179:                                              ; preds = %177, %174
  br label %180

180:                                              ; preds = %179, %170
  %181 = load i32, i32* @ERROR_SUCCESS, align 4
  ret i32 %181
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_encode_add_object_if_needed(i32, i32*, %struct.TYPE_10__**) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_encode_add_attribute_if_needed(i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__**) #1

declare dso_local i64 @kuhl_m_lsadump_dcshadow_encode_add_value(i32*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @wcstoul(i32*, i32*, i32) #1

declare dso_local i64 @kull_m_string_stringToFileTime(i32*, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_remove_attribute(i32, i32*, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_remove_object(i32, i32*) #1

declare dso_local i32 @kuhl_m_lsadump_dcshadow_clean_push_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
