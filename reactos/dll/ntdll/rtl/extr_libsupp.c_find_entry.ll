; ModuleID = '/home/carl/AnghaBench/reactos/dll/ntdll/rtl/extr_libsupp.c_find_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/ntdll/rtl/extr_libsupp.c_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@IMAGE_DIRECTORY_ENTRY_RESOURCE = common dso_local global i32 0, align 4
@STATUS_RESOURCE_DATA_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_RESOURCE_TYPE_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_RESOURCE_NAME_NOT_FOUND = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SUBLANG_NEUTRAL = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_SYS_DEFAULT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@STATUS_RESOURCE_LANG_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_entry(i32 %0, %struct.TYPE_4__* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [9 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32, i32* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 4
  %23 = call i8* @RtlImageDirectoryEntryToData(i32 %20, i32 %21, i32 %22, i32* %12)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @STATUS_RESOURCE_DATA_NOT_FOUND, align 4
  store i32 %27, i32* %6, align 4
  br label %232

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @STATUS_RESOURCE_DATA_NOT_FOUND, align 4
  store i32 %33, i32* %6, align 4
  br label %232

34:                                               ; preds = %28
  %35 = load i8*, i8** %13, align 8
  store i8* %35, i8** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %228

40:                                               ; preds = %34
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %40
  %53 = phi i1 [ true, %40 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i8* @find_entry_by_name(i8* %41, i32 %45, i8* %46, i32 %54)
  %56 = load i8**, i8*** %10, align 8
  store i8* %55, i8** %56, align 8
  %57 = icmp ne i8* %55, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @STATUS_RESOURCE_TYPE_NOT_FOUND, align 4
  store i32 %59, i32* %6, align 4
  br label %232

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %65, i32* %6, align 4
  br label %232

66:                                               ; preds = %60
  %67 = load i8**, i8*** %10, align 8
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %14, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %77, %66
  %81 = phi i1 [ true, %66 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = call i8* @find_entry_by_name(i8* %69, i32 %73, i8* %74, i32 %82)
  %84 = load i8**, i8*** %10, align 8
  store i8* %83, i8** %84, align 8
  %85 = icmp ne i8* %83, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @STATUS_RESOURCE_NAME_NOT_FOUND, align 4
  store i32 %87, i32* %6, align 4
  br label %232

88:                                               ; preds = %80
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %9, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %93, i32* %6, align 4
  br label %232

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %98, i32* %6, align 4
  br label %232

99:                                               ; preds = %94
  %100 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @push_language(i32* %100, i32 %101, i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @PRIMARYLANGID(i32 %110)
  %112 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %113 = call i32 @MAKELANGID(i32 %111, i32 %112)
  %114 = call i32 @push_language(i32* %106, i32 %107, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* @LANG_NEUTRAL, align 4
  %118 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %119 = call i32 @MAKELANGID(i32 %117, i32 %118)
  %120 = call i32 @push_language(i32* %115, i32 %116, i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @PRIMARYLANGID(i32 %123)
  %125 = load i32, i32* @LANG_NEUTRAL, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %185

127:                                              ; preds = %99
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @SUBLANGID(i32 %130)
  %132 = load i64, i64* @SUBLANG_SYS_DEFAULT, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %127
  %135 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %136 = load i32, i32* %17, align 4
  %137 = call %struct.TYPE_5__* (...) @NtCurrentTeb()
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @LANGIDFROMLCID(i32 %139)
  %141 = call i32 @push_language(i32* %135, i32 %136, i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* @TRUE, align 4
  %143 = call i32 @NtQueryDefaultLocale(i32 %142, i32* %18)
  %144 = call i64 @NT_SUCCESS(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %134
  %147 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @LANGIDFROMLCID(i32 %149)
  %151 = call i32 @push_language(i32* %147, i32 %148, i32 %150)
  store i32 %151, i32* %17, align 4
  %152 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @PRIMARYLANGID(i32 %154)
  %156 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %157 = call i32 @MAKELANGID(i32 %155, i32 %156)
  %158 = call i32 @push_language(i32* %152, i32 %153, i32 %157)
  store i32 %158, i32* %17, align 4
  br label %159

159:                                              ; preds = %146, %134
  br label %160

160:                                              ; preds = %159, %127
  %161 = load i32, i32* @FALSE, align 4
  %162 = call i32 @NtQueryDefaultLocale(i32 %161, i32* %19)
  %163 = call i64 @NT_SUCCESS(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @LANGIDFROMLCID(i32 %168)
  %170 = call i32 @push_language(i32* %166, i32 %167, i32 %169)
  store i32 %170, i32* %17, align 4
  %171 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %19, align 4
  %174 = call i32 @PRIMARYLANGID(i32 %173)
  %175 = load i32, i32* @SUBLANG_NEUTRAL, align 4
  %176 = call i32 @MAKELANGID(i32 %174, i32 %175)
  %177 = call i32 @push_language(i32* %171, i32 %172, i32 %176)
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %165, %160
  %179 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 0
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* @LANG_ENGLISH, align 4
  %182 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %183 = call i32 @MAKELANGID(i32 %181, i32 %182)
  %184 = call i32 @push_language(i32* %179, i32 %180, i32 %183)
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %178, %99
  %186 = load i8**, i8*** %10, align 8
  %187 = load i8*, i8** %186, align 8
  store i8* %187, i8** %14, align 8
  store i32 0, i32* %16, align 4
  br label %188

188:                                              ; preds = %206, %185
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %17, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %188
  %193 = load i8*, i8** %14, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [9 x i32], [9 x i32]* %15, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %13, align 8
  %199 = load i32, i32* %11, align 4
  %200 = call i8* @find_entry_by_id(i8* %193, i32 %197, i8* %198, i32 %199)
  %201 = load i8**, i8*** %10, align 8
  store i8* %200, i8** %201, align 8
  %202 = icmp ne i8* %200, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  %204 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %204, i32* %6, align 4
  br label %232

205:                                              ; preds = %192
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  br label %188

209:                                              ; preds = %188
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @PRIMARYLANGID(i32 %212)
  %214 = load i32, i32* @LANG_NEUTRAL, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load i8*, i8** %14, align 8
  %218 = load i8*, i8** %13, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i8* @find_first_entry(i8* %217, i8* %218, i32 %219)
  %221 = load i8**, i8*** %10, align 8
  store i8* %220, i8** %221, align 8
  %222 = icmp ne i8* %220, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %224, i32* %6, align 4
  br label %232

225:                                              ; preds = %216
  br label %226

226:                                              ; preds = %225, %209
  %227 = load i32, i32* @STATUS_RESOURCE_LANG_NOT_FOUND, align 4
  store i32 %227, i32* %6, align 4
  br label %232

228:                                              ; preds = %39
  %229 = load i8*, i8** %14, align 8
  %230 = load i8**, i8*** %10, align 8
  store i8* %229, i8** %230, align 8
  %231 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %228, %226, %223, %203, %97, %92, %86, %64, %58, %32, %26
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i8* @RtlImageDirectoryEntryToData(i32, i32, i32, i32*) #1

declare dso_local i8* @find_entry_by_name(i8*, i32, i8*, i32) #1

declare dso_local i32 @push_language(i32*, i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @PRIMARYLANGID(i32) #1

declare dso_local i64 @SUBLANGID(i32) #1

declare dso_local i32 @LANGIDFROMLCID(i32) #1

declare dso_local %struct.TYPE_5__* @NtCurrentTeb(...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtQueryDefaultLocale(i32, i32*) #1

declare dso_local i8* @find_entry_by_id(i8*, i32, i8*, i32) #1

declare dso_local i8* @find_first_entry(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
