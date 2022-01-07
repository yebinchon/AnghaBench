; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_set_filelist.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_set_filelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@key_recentfiles = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FILELIST_ENTRIES = common dso_local global i32 0, align 4
@MIIM_DATA = common dso_local global i32 0, align 4
@ID_FILE_RECENT1 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@var_file = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @registry_set_filelist(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @key_recentfiles, align 4
  %15 = call i64 @registry_get_handle(i32* %5, i32* %6, i32 %14)
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %190

18:                                               ; preds = %2
  %19 = load i32, i32* @FILELIST_ENTRIES, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i32*, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @GetMenu(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 24, i32* %25, align 8
  %26 = load i32, i32* @MIIM_DATA, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %36, %18
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @FILELIST_ENTRIES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %22, i64 %34
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %28

39:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* @ID_FILE_RECENT1, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i64 @GetMenuItemInfoW(i32 %41, i64 %45, i32 %46, %struct.TYPE_3__* %11)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %22, i64 %54
  store i32* %52, i32** %55, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32*, i32** %22, i64 0
  %62 = load i32*, i32** %61, align 16
  %63 = call i64 @lstrcmpiW(i32* %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %186

65:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %110, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @FILELIST_ENTRIES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %22, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i1 [ false, %66 ], [ %75, %70 ]
  br i1 %77, label %78, label %113

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %22, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = call i64 @lstrcmpiW(i32* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %109, label %86

86:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %22, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %22, i64 %102
  store i32* %98, i32** %103, align 8
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %87

107:                                              ; preds = %87
  %108 = getelementptr inbounds i32*, i32** %22, i64 0
  store i32* null, i32** %108, align 16
  br label %113

109:                                              ; preds = %78
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %66

113:                                              ; preds = %107, %76
  %114 = getelementptr inbounds i32*, i32** %22, i64 0
  %115 = load i32*, i32** %114, align 16
  %116 = icmp ne i32* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load i32*, i32** %3, align 8
  %119 = getelementptr inbounds i32*, i32** %22, i64 0
  store i32* %118, i32** %119, align 16
  br label %146

120:                                              ; preds = %113
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %140, %120
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @FILELIST_ENTRIES, align 4
  %124 = sub nsw i32 %123, 1
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %121
  %127 = load i32, i32* @FILELIST_ENTRIES, align 4
  %128 = sub nsw i32 %127, 2
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %22, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @FILELIST_ENTRIES, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %22, i64 %138
  store i32* %133, i32** %139, align 8
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %121

143:                                              ; preds = %121
  %144 = load i32*, i32** %3, align 8
  %145 = getelementptr inbounds i32*, i32** %22, i64 0
  store i32* %144, i32** %145, align 16
  br label %146

146:                                              ; preds = %143, %117
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %182, %146
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @FILELIST_ENTRIES, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %22, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br label %157

157:                                              ; preds = %151, %147
  %158 = phi i1 [ false, %147 ], [ %156, %151 ]
  br i1 %158, label %159, label %185

159:                                              ; preds = %157
  %160 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %161 = load i32, i32* @var_file, align 4
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  %164 = call i32 @wsprintfW(i32* %160, i32 %161, i32 %163)
  %165 = load i32, i32* %5, align 4
  %166 = bitcast [6 x i32]* %12 to i32*
  %167 = load i32, i32* @REG_SZ, align 4
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %22, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %22, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @lstrlenW(i32* %175)
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = mul i64 %178, 4
  %180 = trunc i64 %179 to i32
  %181 = call i32 @RegSetValueExW(i32 %165, i32* %166, i32 0, i32 %167, i32* %171, i32 %180)
  br label %182

182:                                              ; preds = %159
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %147

185:                                              ; preds = %157
  br label %186

186:                                              ; preds = %185, %59
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @RegCloseKey(i32 %187)
  %189 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %189)
  br label %190

190:                                              ; preds = %186, %2
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @registry_read_filelist(i32 %191)
  ret void
}

declare dso_local i64 @registry_get_handle(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i64 @GetMenuItemInfoW(i32, i64, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @lstrcmpiW(i32*, i32*) #1

declare dso_local i32 @wsprintfW(i32*, i32, i32) #1

declare dso_local i32 @RegSetValueExW(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @registry_read_filelist(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
