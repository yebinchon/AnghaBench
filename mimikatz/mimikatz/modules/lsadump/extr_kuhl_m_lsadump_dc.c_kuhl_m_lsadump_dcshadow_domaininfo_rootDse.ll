; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domaininfo_rootDse.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_domaininfo_rootDse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [24 x i32] [i32 114, i32 111, i32 111, i32 116, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 78, i32 97, i32 109, i32 105, i32 110, i32 103, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [27 x i32] [i32 99, i32 111, i32 110, i32 102, i32 105, i32 103, i32 117, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 78, i32 97, i32 109, i32 105, i32 110, i32 103, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [20 x i32] [i32 115, i32 99, i32 104, i32 101, i32 109, i32 97, i32 78, i32 97, i32 109, i32 105, i32 110, i32 103, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [14 x i32] [i32 100, i32 115, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [30 x i32] [i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 70, i32 117, i32 110, i32 99, i32 116, i32 105, i32 111, i32 110, i32 97, i32 108, i32 105, i32 116, i32 121, i32 0], align 4
@.str.5 = private unnamed_addr constant [20 x i32] [i32 104, i32 105, i32 103, i32 104, i32 101, i32 115, i32 116, i32 67, i32 111, i32 109, i32 109, i32 105, i32 116, i32 116, i32 101, i32 100, i32 85, i32 83, i32 78, i32 0], align 4
@LDAP_SCOPE_BASE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LDAP_SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i32] [i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 58, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [20 x i32] [i32 67, i32 111, i32 110, i32 102, i32 105, i32 103, i32 117, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 58, i32 32, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [20 x i32] [i32 83, i32 99, i32 104, i32 101, i32 109, i32 97, i32 58, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [5 x i32] [i32 44, i32 67, i32 78, i32 61, i32 0], align 4
@.str.10 = private unnamed_addr constant [20 x i32] [i32 100, i32 115, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 78, i32 97, i32 109, i32 101, i32 58, i32 32, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [42 x i32] [i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 108, i32 101, i32 114, i32 70, i32 117, i32 110, i32 99, i32 116, i32 105, i32 111, i32 110, i32 97, i32 108, i32 105, i32 116, i32 121, i32 58, i32 32, i32 37, i32 117, i32 32, i32 40, i32 32, i32 37, i32 115, i32 32, i32 41, i32 10, i32 0], align 4
@SZ_DOMAIN_CONTROLLER_FUNCTIONALITY = common dso_local global i8** null, align 8
@.str.12 = private unnamed_addr constant [2 x i32] [i32 63, i32 0], align 4
@.str.13 = private unnamed_addr constant [25 x i32] [i32 104, i32 105, i32 103, i32 104, i32 101, i32 115, i32 116, i32 67, i32 111, i32 109, i32 109, i32 105, i32 116, i32 116, i32 101, i32 100, i32 85, i32 83, i32 78, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.14 = private unnamed_addr constant [29 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 99, i32 111, i32 117, i32 110, i32 116, i32 95, i32 101, i32 110, i32 116, i32 114, i32 105, i32 101, i32 115, i32 32, i32 105, i32 115, i32 32, i32 78, i32 79, i32 84, i32 32, i32 49, i32 10, i32 0], align 4
@.str.15 = private unnamed_addr constant [25 x i32] [i32 108, i32 100, i32 97, i32 112, i32 95, i32 115, i32 101, i32 97, i32 114, i32 99, i32 104, i32 95, i32 115, i32 32, i32 48, i32 120, i32 37, i32 120, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_dcshadow_domaininfo_rootDse(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [7 x i8*], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %8 = bitcast [7 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 56, i1 false)
  %9 = bitcast i8* %8 to [7 x i8*]*
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 0
  store i8* bitcast ([24 x i32]* @.str to i8*), i8** %10, align 16
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 1
  store i8* bitcast ([27 x i32]* @.str.1 to i8*), i8** %11, align 8
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 2
  store i8* bitcast ([20 x i32]* @.str.2 to i8*), i8** %12, align 16
  %13 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 3
  store i8* bitcast ([14 x i32]* @.str.3 to i8*), i8** %13, align 8
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 4
  store i8* bitcast ([30 x i32]* @.str.4 to i8*), i8** %14, align 16
  %15 = getelementptr inbounds [7 x i8*], [7 x i8*]* %9, i32 0, i32 5
  store i8* bitcast ([20 x i32]* @.str.5 to i8*), i8** %15, align 8
  store i32* null, i32** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LDAP_SCOPE_BASE, align 4
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 0
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i64 @ldap_search_s(i32 %18, i32* null, i32 %19, i32* null, i8** %20, i32 %21, i32** %5)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @LDAP_SUCCESS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %190

26:                                               ; preds = %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ldap_count_entries(i32 %29, i32* %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %185

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 0
  %39 = load i8*, i8** %38, align 16
  %40 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %36, i32* %37, i8* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = icmp ne i8* %40, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.6 to i8*), i64 %48)
  br label %50

50:                                               ; preds = %44, %33
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %53, i32* %54, i8* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = icmp ne i8* %57, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.7 to i8*), i64 %65)
  br label %67

67:                                               ; preds = %61, %50
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 2
  %73 = load i8*, i8** %72, align 16
  %74 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %70, i32* %71, i8* %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = icmp ne i8* %74, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %67
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.8 to i8*), i64 %82)
  br label %84

84:                                               ; preds = %78, %67
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %87, i32* %88, i8* %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = icmp ne i8* %91, null
  br i1 %94, label %95, label %126

95:                                               ; preds = %84
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @wcsstr(i8* %98, i8* bitcast ([5 x i32]* @.str.9 to i8*))
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %95
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = call i8* @wcsstr(i8* %104, i8* bitcast ([5 x i32]* @.str.9 to i8*))
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @kull_m_string_copy(i8** %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %112, %108, %102
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.10 to i8*), i64 %123)
  br label %125

125:                                              ; preds = %119, %95
  br label %126

126:                                              ; preds = %125, %84
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 4
  %132 = load i8*, i8** %131, align 16
  %133 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %129, i32* %130, i8* %132)
  store i8* %133, i8** %6, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %126
  %136 = load i8*, i8** %6, align 8
  %137 = call i8* @wcstoul(i8* %136, i32* null, i32 10)
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @LocalFree(i8* %141)
  br label %143

143:                                              ; preds = %135, %126
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i8**, i8*** @SZ_DOMAIN_CONTROLLER_FUNCTIONALITY, align 8
  %151 = call i64 @ARRAYSIZE(i8** %150)
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %143
  %154 = load i8**, i8*** @SZ_DOMAIN_CONTROLLER_FUNCTIONALITY, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i8*, i8** %154, i64 %157
  %159 = load i8*, i8** %158, align 8
  br label %161

160:                                              ; preds = %143
  br label %161

161:                                              ; preds = %160, %153
  %162 = phi i8* [ %159, %153 ], [ bitcast ([2 x i32]* @.str.12 to i8*), %160 ]
  %163 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([42 x i32]* @.str.11 to i8*), i64 %146, i8* %162)
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 5
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32 %166, i32* %167, i8* %169)
  store i8* %170, i8** %6, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %161
  %173 = load i8*, i8** %6, align 8
  %174 = call i8* @wcstoul(i8* %173, i32* null, i32 10)
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 6
  store i8* %174, i8** %176, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @LocalFree(i8* %177)
  br label %179

179:                                              ; preds = %172, %161
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = ptrtoint i8* %182 to i64
  %184 = call i32 (i8*, i64, ...) @kprintf(i8* bitcast ([25 x i32]* @.str.13 to i8*), i64 %183)
  br label %187

185:                                              ; preds = %26
  %186 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str.14 to i8*))
  br label %187

187:                                              ; preds = %185, %179
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @ldap_msgfree(i32* %188)
  br label %194

190:                                              ; preds = %1
  %191 = load i64, i64* %3, align 8
  %192 = load i64, i64* %3, align 8
  %193 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([25 x i32]* @.str.15 to i8*), i64 %191, i64 %192)
  br label %194

194:                                              ; preds = %190, %187
  %195 = load i64, i64* %3, align 8
  %196 = load i64, i64* @LDAP_SUCCESS, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %194
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 5
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %218

203:                                              ; preds = %198
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 4
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %218

208:                                              ; preds = %203
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = icmp ne i8* %216, null
  br label %218

218:                                              ; preds = %213, %208, %203, %198, %194
  %219 = phi i1 [ false, %208 ], [ false, %203 ], [ false, %198 ], [ false, %194 ], [ %217, %213 ]
  %220 = zext i1 %219 to i32
  ret i32 %220
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ldap_search_s(i32, i32*, i32, i32*, i8**, i32, i32**) #2

declare dso_local i32 @ldap_count_entries(i32, i32*) #2

declare dso_local i8* @kuhl_m_lsadump_dcshadow_getSingleTextAttr(i32, i32*, i8*) #2

declare dso_local i32 @kprintf(i8*, i64, ...) #2

declare dso_local i8* @wcsstr(i8*, i8*) #2

declare dso_local i64 @kull_m_string_copy(i8**, i8*) #2

declare dso_local i8* @wcstoul(i8*, i32*, i32) #2

declare dso_local i32 @LocalFree(i8*) #2

declare dso_local i64 @ARRAYSIZE(i8**) #2

declare dso_local i32 @PRINT_ERROR(i8*, ...) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
