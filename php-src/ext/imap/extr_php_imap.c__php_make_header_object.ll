; ModuleID = '/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_make_header_object.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/imap/extr_php_imap.c__php_make_header_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"remail\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Subject\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"in_reply_to\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"message_id\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"newsgroups\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"followup_to\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"references\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"toaddress\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"fromaddress\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ccaddress\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"bccaddress\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"bcc\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"reply_toaddress\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"reply_to\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"senderaddress\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"sender\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"return_pathaddress\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"return_path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @_php_make_header_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_php_make_header_object(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @object_init(i32* %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @add_property_string(i32* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 14
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 14
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @add_property_string(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 14
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 14
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @add_property_string(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @add_property_string(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @add_property_string(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @add_property_string(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @add_property_string(i32* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @add_property_string(i32* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %92, %87
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @add_property_string(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %103, %98
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 6
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32*, i32** %3, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 6
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @add_property_string(i32* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %114, %109
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 13
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = call i32 @array_init(i32* %5)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 13
  %129 = load i64, i64* %128, align 8
  %130 = call i32* @_php_imap_parse_address(i64 %129, i32* %5)
  store i32* %130, i32** %6, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32*, i32** %3, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @add_property_str(i32* %134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %135)
  br label %137

137:                                              ; preds = %133, %125
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @add_assoc_object(i32* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %5)
  br label %140

140:                                              ; preds = %137, %120
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 12
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %140
  %146 = call i32 @array_init(i32* %5)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 12
  %149 = load i64, i64* %148, align 8
  %150 = call i32* @_php_imap_parse_address(i64 %149, i32* %5)
  store i32* %150, i32** %6, align 8
  %151 = load i32*, i32** %6, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i32*, i32** %3, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @add_property_str(i32* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32* %155)
  br label %157

157:                                              ; preds = %153, %145
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @add_assoc_object(i32* %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* %5)
  br label %160

160:                                              ; preds = %157, %140
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 11
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = call i32 @array_init(i32* %5)
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = call i32* @_php_imap_parse_address(i64 %169, i32* %5)
  store i32* %170, i32** %6, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %165
  %174 = load i32*, i32** %3, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @add_property_str(i32* %174, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* %175)
  br label %177

177:                                              ; preds = %173, %165
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @add_assoc_object(i32* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %5)
  br label %180

180:                                              ; preds = %177, %160
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %180
  %186 = call i32 @array_init(i32* %5)
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = call i32* @_php_imap_parse_address(i64 %189, i32* %5)
  store i32* %190, i32** %6, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load i32*, i32** %3, align 8
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @add_property_str(i32* %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32* %195)
  br label %197

197:                                              ; preds = %193, %185
  %198 = load i32*, i32** %3, align 8
  %199 = call i32 @add_assoc_object(i32* %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32* %5)
  br label %200

200:                                              ; preds = %197, %180
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %200
  %206 = call i32 @array_init(i32* %5)
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 9
  %209 = load i64, i64* %208, align 8
  %210 = call i32* @_php_imap_parse_address(i64 %209, i32* %5)
  store i32* %210, i32** %6, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %205
  %214 = load i32*, i32** %3, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @add_property_str(i32* %214, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32* %215)
  br label %217

217:                                              ; preds = %213, %205
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @add_assoc_object(i32* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32* %5)
  br label %220

220:                                              ; preds = %217, %200
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %220
  %226 = call i32 @array_init(i32* %5)
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = call i32* @_php_imap_parse_address(i64 %229, i32* %5)
  store i32* %230, i32** %6, align 8
  %231 = load i32*, i32** %6, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load i32*, i32** %3, align 8
  %235 = load i32*, i32** %6, align 8
  %236 = call i32 @add_property_str(i32* %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32* %235)
  br label %237

237:                                              ; preds = %233, %225
  %238 = load i32*, i32** %3, align 8
  %239 = call i32 @add_assoc_object(i32* %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32* %5)
  br label %240

240:                                              ; preds = %237, %220
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %260

245:                                              ; preds = %240
  %246 = call i32 @array_init(i32* %5)
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 7
  %249 = load i64, i64* %248, align 8
  %250 = call i32* @_php_imap_parse_address(i64 %249, i32* %5)
  store i32* %250, i32** %6, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = load i32*, i32** %3, align 8
  %255 = load i32*, i32** %6, align 8
  %256 = call i32 @add_property_str(i32* %254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32* %255)
  br label %257

257:                                              ; preds = %253, %245
  %258 = load i32*, i32** %3, align 8
  %259 = call i32 @add_assoc_object(i32* %258, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32* %5)
  br label %260

260:                                              ; preds = %257, %240
  ret void
}

declare dso_local i32 @object_init(i32*) #1

declare dso_local i32 @add_property_string(i32*, i8*, i8*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32* @_php_imap_parse_address(i64, i32*) #1

declare dso_local i32 @add_property_str(i32*, i8*, i32*) #1

declare dso_local i32 @add_assoc_object(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
